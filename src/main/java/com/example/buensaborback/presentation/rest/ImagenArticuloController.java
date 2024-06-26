package com.example.buensaborback.presentation.rest;

import com.example.buensaborback.business.facade.ImagenArticuloFacade;
import com.example.buensaborback.domain.dto.ImagenArticuloDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@RestController
@RequestMapping("/images")
@CrossOrigin("*")
public class ImagenArticuloController {

    @Autowired
    private ImagenArticuloFacade imagenArticuloFacade;

    @GetMapping("/getImages")
    public List<ImagenArticuloDto> getAll() {
        return imagenArticuloFacade.getAllImages();
    }

    @PostMapping("/uploads")
    public String uploadImages(@RequestParam("upload") MultipartFile file) {
        return imagenArticuloFacade.uploadImages(file);
    }

    @PostMapping("/deleteImg")
    public String deleteById(@RequestParam("publicId") String publicId, @RequestParam("id") Long id) {
        return imagenArticuloFacade.deleteImage(publicId, id);
    }
}
