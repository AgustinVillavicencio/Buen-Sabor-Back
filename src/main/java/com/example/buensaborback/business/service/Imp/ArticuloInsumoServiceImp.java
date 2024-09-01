package com.example.buensaborback.business.service.Imp;

import com.example.buensaborback.business.service.ArticuloInsumoService;
import com.example.buensaborback.business.service.Base.BaseServiceImp;
import com.example.buensaborback.domain.dto.SucursalDtos.SucursalShortDto;
import com.example.buensaborback.domain.entities.*;
import com.example.buensaborback.repositories.*;
import com.example.buensaborback.utils.PublicIdService;
import jakarta.transaction.Transactional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class ArticuloInsumoServiceImp extends BaseServiceImp<ArticuloInsumo, Long> implements ArticuloInsumoService {

    private static final Logger logger = LoggerFactory.getLogger(ArticuloInsumoServiceImp.class);

    @Autowired
    ArticuloInsumoRepository articuloInsumoRepository;

    @Autowired
    ImagenArticuloRepository imagenArticuloRepository;

    @Autowired
    ImagenArticuloServiceImpl imagenArticuloService;

    @Autowired
    ArticuloManufacturadoDetalleRepository articuloManufacturadoDetalleRepository;

    @Autowired
    CategoriaRepository categoriaRepository;

    @Autowired
    SucursalRepository sucursalRepository;

    @Autowired
    PublicIdService publicIdService;

    @Transactional
    public List<ArticuloInsumo> create(ArticuloInsumo request, Set<Sucursal> sucursales) {
        logger.info("Datos recibidos en el método 'create': {}", request);
        logger.info("Sucursales recibidas: {}", sucursales);

        List<ArticuloInsumo> articulosCreados = new ArrayList<>();
        Categoria categoria = fetchAndValidateCategoria(request);

        for (Sucursal sucursal : sucursales) {
            Sucursal sucursalBd = sucursalRepository.findById(sucursal.getId())
                    .orElseThrow(() -> new RuntimeException("La sucursal con id " + sucursal.getId() + " no se ha encontrado"));

            logger.info("Creando ArticuloInsumo para la sucursal: {}", sucursalBd.getNombre());

            ArticuloInsumo nuevoArticulo = createArticuloInsumo(request, sucursalBd, categoria);
            logger.info("Nuevo artículo creado: {}", nuevoArticulo);

            articulosCreados.add(nuevoArticulo);
        }
        List<ArticuloInsumo> articulos = articuloInsumoRepository.saveAll(articulosCreados);
        logger.info("Artículos guardados en la BD: {}", articulos);
        return articulos;
    }

    @Override
    public ArticuloInsumo update(ArticuloInsumo request, Long id) {
        logger.info("Datos recibidos en el método 'update': {}", request);

        ArticuloInsumo insumoExistente = articuloInsumoRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Insumo no encontrado: { id: " + id + " }"));

        logger.info("Insumo existente antes de la actualización: {}", insumoExistente);

        Categoria categoria = fetchAndValidateCategoria(request);
        updateImagenes(request, insumoExistente);
        request.setCategoria(categoria);

        ArticuloInsumo actualizado = articuloInsumoRepository.save(request);
        logger.info("Artículo actualizado: {}", actualizado);
        return actualizado;
    }

    @Transactional
    public List<ArticuloInsumo> duplicateInOtherSucursales(Long id, Set<SucursalShortDto> sucursales) {
        logger.info("Iniciando duplicación de ArticuloInsumo con ID: {}", id);

        ArticuloInsumo articuloExistente = articuloInsumoRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Insumo no encontrado: { id: " + id + " }"));

        logger.info("Insumo existente para duplicar: {}", articuloExistente);

        List<ArticuloInsumo> articulosDuplicados = new ArrayList<>();
        Categoria categoria = articuloExistente.getCategoria();

        for (SucursalShortDto sucursal : sucursales) {
            Sucursal sucursalBd = sucursalRepository.findById(sucursal.getId())
                    .orElseThrow(() -> new RuntimeException("La sucursal con id " + sucursal.getId() + " no se ha encontrado"));

            logger.info("Duplicando ArticuloInsumo para la sucursal: {}", sucursalBd.getNombre());

            ArticuloInsumo nuevoArticulo = createArticuloInsumo(articuloExistente, sucursalBd, categoria);
            articulosDuplicados.add(nuevoArticulo);
        }

        List<ArticuloInsumo> articulosGuardados = articuloInsumoRepository.saveAll(articulosDuplicados);
        logger.info("Artículos duplicados y guardados: {}", articulosGuardados);
        return articulosGuardados;
    }

    private Categoria fetchAndValidateCategoria(ArticuloInsumo request) {
        logger.info("Validando categoría para el ArticuloInsumo: {}", request.getCategoria());
        if (request.getCategoria() != null) {
            return categoriaRepository.findById(request.getCategoria().getId())
                    .filter(categoria -> categoria.isEsInsumo() || !request.getEsParaElaborar())
                    .orElseThrow(() -> new RuntimeException("Categoría no válida"));
        }
        return null;
    }

    private ArticuloInsumo createArticuloInsumo(ArticuloInsumo request, Sucursal sucursal, Categoria categoria) {
        logger.info("Creando nuevo ArticuloInsumo para la sucursal: {}", sucursal.getNombre());
        ArticuloInsumo nuevoArticulo = new ArticuloInsumo(
                request.getDenominacion(),
                request.getPrecioVenta(),
                request.getUnidadMedida(),
                request.getCategoria(),
                request.getPrecioCompra(),
                request.getStockActual(),
                request.getStockMinimo(),
                request.getStockMaximo(),
                request.getEsParaElaborar()
        );

        logger.info("Datos del nuevo artículo antes de asignar imágenes y categoría: {}", nuevoArticulo);

        // Copiar las imágenes del artículo de solicitud al nuevo artículo
        nuevoArticulo.setImagenes(new HashSet<>(request.getImagenes()));

        if (categoria != null) {
            boolean categoriaExisteEnSucursal = sucursal.getCategorias().stream()
                    .anyMatch(cat -> cat.getId().equals(categoria.getId()));

            if (!categoriaExisteEnSucursal) {
                throw new RuntimeException("La categoría " + categoria.getDenominacion() + " no existe en la sucursal " + sucursal.getNombre());
            }
            nuevoArticulo.setCategoria(categoria);
        }

        nuevoArticulo.setSucursal(sucursal);
        logger.info("Datos del nuevo artículo después de asignar imágenes y categoría: {}", nuevoArticulo);
        return nuevoArticulo;
    }

    private void updateImagenes(ArticuloInsumo request, ArticuloInsumo insumoExistente) {
        logger.info("Actualizando imágenes del ArticuloInsumo existente");
        Set<ImagenArticulo> imagenes = request.getImagenes();
        Set<ImagenArticulo> imagenesEliminadas = new HashSet<>(insumoExistente.getImagenes());
        imagenesEliminadas.removeAll(imagenes);

        for (ImagenArticulo imagen : imagenesEliminadas) {
            logger.info("Eliminando imagen: {}", imagen.getUrl());
            imagenArticuloService.deleteImage(publicIdService.obtenerPublicId(imagen.getUrl()), imagen.getId());
        }
    }

    @Override
    public void deleteById(Long id) {
        logger.info("Eliminando ArticuloInsumo con ID: {}", id);
        ArticuloInsumo insumo = articuloInsumoRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Insumo no encontrado: { id: " + id + " }"));

        List<ArticuloManufacturadoDetalle> insumoEsUtilizado = articuloManufacturadoDetalleRepository.getByArticulo(insumo);
        if (!insumoEsUtilizado.isEmpty()) {
            throw new RuntimeException("No se puede eliminar el articulo porque está presente en un detalle");
        }
        articuloInsumoRepository.delete(insumo);
        logger.info("ArticuloInsumo con ID: {} eliminado correctamente", id);
    }

    @Override
    public Page<ArticuloInsumo> findByEsParaElaborarTrue(Pageable pageable) {
        return articuloInsumoRepository.findByEsParaElaborarTrue(pageable);
    }

    @Override
    public Page<ArticuloInsumo> findByEsParaElaborarFalse(Pageable pageable) {
        return articuloInsumoRepository.findByEsParaElaborarFalse(pageable);
    }

    @Override
    public Page<ArticuloInsumo> buscarPorCategoriaYNombre(Pageable pageable, Long idSucursal, Long categoriaId, String nombre) {
        List<Long> subcategoryIds = findAllSubcategoryIds(categoriaId);
        subcategoryIds.add(categoriaId);  // Include the parent category ID
        return articuloInsumoRepository.findBySucursalIdAndCategoriaIdInAndDenominacionContainingIgnoreCase(idSucursal, subcategoryIds, nombre, pageable);
    }

    public Page<ArticuloInsumo> getArticulosByCategoria(Pageable pageable, Long idSucursal, Long categoriaId) {
        List<Long> subcategoryIds = findAllSubcategoryIds(categoriaId);
        subcategoryIds.add(categoriaId);  // Include the parent category ID
        return articuloInsumoRepository.findBySucursalIdAndCategoriaIdIn(idSucursal, subcategoryIds, pageable);
    }

    @Override
    public Page<ArticuloInsumo> getArticulosByNombre(Pageable pageable, Long idSucursal, String nombre) {
        return null;
    }

    @Override
    public Page<ArticuloInsumo> findBySucursal(Long sucursalId, Pageable pageable) {
        return null;
    }

    @Override
    public List<ArticuloInsumo> findBySucursal(Long sucursalId) {
        return List.of();
    }

    public List<Long> findAllSubcategoryIds(Long categoriaId) {
        List<Long> subcategoryIds = new ArrayList<>();
        findSubcategoryIdsRecursive(categoriaId, subcategoryIds);
        return subcategoryIds;
    }

    private void findSubcategoryIdsRecursive(Long categoriaId, List<Long> subcategoryIds) {
        List<Categoria> subcategories = categoriaRepository.findByCategoriaPadre_Id(categoriaId);
        for (Categoria subcategory : subcategories) {
            subcategoryIds.add(subcategory.getId());
            findSubcategoryIdsRecursive(subcategory.getId(), subcategoryIds);
        }
    }


    public ArticuloInsumo findById(Long id) {
        logger.info("Buscando ArticuloInsumo con ID: {}", id);
        return articuloInsumoRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Insumo no encontrado: { id: " + id + " }"));
    }
}
