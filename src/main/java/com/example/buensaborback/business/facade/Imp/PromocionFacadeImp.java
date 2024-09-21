package com.example.buensaborback.business.facade.Imp;

import com.example.buensaborback.business.facade.Base.BaseFacadeImp;
import com.example.buensaborback.business.facade.EmpleadoFacade;
import com.example.buensaborback.business.facade.PromocionFacade;
import com.example.buensaborback.business.mapper.BaseMapper;
import com.example.buensaborback.business.mapper.PromocionMapper;
import com.example.buensaborback.business.mapper.SucursalMapper;
import com.example.buensaborback.business.service.ArticuloInsumoService;
import com.example.buensaborback.business.service.Base.BaseService;
import com.example.buensaborback.business.service.PromocionService;
import com.example.buensaborback.domain.dto.ArticuloInsumoDtos.ArticuloInsumoDto;
import com.example.buensaborback.domain.dto.ArticuloManufacturado.ArticuloManufacturadoDto;
import com.example.buensaborback.domain.dto.ArticuloManufacturado.ArticuloManufacturadoPostDto;
import com.example.buensaborback.domain.dto.PromocionDtos.PromocionDto;
import com.example.buensaborback.domain.dto.SucursalDtos.SucursalShortDto;
import com.example.buensaborback.domain.entities.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class PromocionFacadeImp extends BaseFacadeImp<Promocion, PromocionDto,PromocionDto, Long> implements PromocionFacade {

    @Autowired
    private PromocionService promocionService;

    @Autowired
    SucursalMapper sucursalMapper;

    @Autowired
    PromocionMapper promocionMapper;

    private static final Logger logger = LoggerFactory.getLogger(PromocionService.class);

    public PromocionFacadeImp(BaseService<Promocion, Long> baseService, BaseMapper<Promocion, PromocionDto, PromocionDto> baseMapper) {
        super(baseService, baseMapper);
    }

    public List<PromocionDto> createConSucursales(PromocionDto request) {
        // Log inicial de la solicitud
        logger.info("Iniciando la creación de promoción con la solicitud: {}", request);

        Set<SucursalShortDto> sucursalesDto = request.getSucursales();
        logger.info("Sucursales recibidas del DTO: {}", sucursalesDto);

        Set<Sucursal> sucursales = sucursalMapper.toEntitiesShort(sucursalesDto);
        logger.info("Sucursales mapeadas a entidades: {}", sucursales);

        Promocion entityToCreate = baseMapper.toEntity(request);
        logger.info("Entidad Promocion mapeada desde el DTO: {}", entityToCreate);

        // Graba una entidad
        var entityCreated = promocionService.create(entityToCreate, sucursales);
        logger.info("Promoción creada con éxito: {}", entityCreated);

        // convierte a Dto para devolver
        List<PromocionDto> responseDtos = baseMapper.toDTOsList(entityCreated);
        logger.info("Promoción convertida a DTO para la respuesta: {}", responseDtos);

        return responseDtos;
    }


    public List<PromocionDto> duplicateInOtherSucursales(Long id, Set<SucursalShortDto> sucursales) {
        // Graba una entidad
        var entityCreated = promocionService.duplicateInOtherSucursales(id, sucursales);
        // convierte a Dto para devolver
        return baseMapper.toDTOsList(entityCreated);
    }

    public Page<PromocionDto> findBySucursal(Long sucursalId, Pageable pageable) {
        Page<Promocion> articulosFiltrados = promocionService.findBySucursal_Id(sucursalId, pageable);
        // Mapea las entidades a DTOs
        List<PromocionDto> dtos = articulosFiltrados.getContent().stream()
                .map(promocionMapper::toDTO)
                .collect(Collectors.toList());
        // Devuelve una página de DTOs
        return new PageImpl<>(dtos, pageable, articulosFiltrados.getTotalElements());
    }

    public Page<PromocionDto> getPromocionesByNombre(Pageable pageable, Long idSucursal, String nombre) {
        Page<Promocion> articulosFiltrados = promocionService.getPromocionesByNombre(pageable, idSucursal, nombre);
        // Mapea las entidades a DTOs
        List<PromocionDto> dtos = articulosFiltrados.getContent().stream()
                .map(promocionMapper::toDTO)
                .collect(Collectors.toList());
        // Devuelve una página de DTOs
        return new PageImpl<>(dtos, pageable, articulosFiltrados.getTotalElements());
    }
}
