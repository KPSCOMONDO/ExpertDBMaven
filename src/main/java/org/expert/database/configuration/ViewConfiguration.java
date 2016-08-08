package org.expert.database.configuration;

import org.springframework.boot.autoconfigure.web.WebMvcAutoConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;

@Configuration
public class ViewConfiguration extends WebMvcAutoConfiguration.WebMvcAutoConfigurationAdapter{

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/about").setViewName("/backs/admins/skills/skill");
        registry.addViewController("/contact").setViewName("/fro");
    }
    
    
}
