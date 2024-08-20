package com.example.buensaborback.business.facade;

import com.example.buensaborback.business.facade.Base.BaseFacade;
import com.example.buensaborback.domain.entities.ImagenSucursal;
import org.springframework.web.multipart.MultipartFile;

public interface ImagenSucursalFacade {
    String uploadImages(MultipartFile file, Long idSucursal);
    String deleteImage(String publicId, Long id);
}