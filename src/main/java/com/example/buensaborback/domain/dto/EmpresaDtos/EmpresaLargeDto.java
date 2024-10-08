package com.example.buensaborback.domain.dto.EmpresaDtos;

import com.example.buensaborback.domain.dto.BaseDto;
import com.example.buensaborback.domain.dto.SucursalDtos.SucursalDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class EmpresaLargeDto extends BaseDto {
    private String nombre;
    private String razonSocial;
    private String cuil;
    private Set<SucursalDto> sucursales;
}
