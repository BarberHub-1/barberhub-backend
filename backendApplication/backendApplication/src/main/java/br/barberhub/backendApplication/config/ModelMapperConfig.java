package br.barberhub.backendApplication.config;

import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ModelMapperConfig {

    @Bean
    public ModelMapper modelMapper() {
        ModelMapper modelMapper = new ModelMapper();
        
        // Configurações adicionais do ModelMapper podem ser adicionadas aqui
        // Por exemplo, para ignorar campos específicos ou configurar conversões personalizadas
        
        return modelMapper;
    }
} 