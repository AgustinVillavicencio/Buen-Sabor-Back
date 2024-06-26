package com.example.buensaborback.business.facade;

import com.example.buensaborback.domain.dto.ImagenArticuloDto;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface ImagenArticuloFacade {
    List<ImagenArticuloDto> getAllImages();
    String deleteImage(String publicId, Long id);
    String uploadImages(MultipartFile file);
}
