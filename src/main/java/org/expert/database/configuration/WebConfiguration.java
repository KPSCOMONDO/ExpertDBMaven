package org.expert.database.configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestTemplate;

@Configuration
@PropertySource(value = {"classpath:configuration.properties"})
public class WebConfiguration {

    @Autowired
    private Environment environment;

    @Bean
    public HttpHeaders header() {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.set("Authorization", "Basic ZGV2OiFAIyQlYXBp");// + environment.getProperty("EXPERT.API.HEADER"));
        return headers;
    }

    @Bean
    public RestTemplate restTemplate() {
        RestTemplate restTemplate = new RestTemplate();
        // Add the Jackson and String message converters
        restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
        restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
        return restTemplate;
    }

    @Bean
    public String WS_URL() {
        return "http://localhost:8081/api";//environment.getProperty("EXPERT.API.URL");
    }

    @Bean
    public String WEB_UI_URL() {
        return environment.getProperty("EXPERT.URL");
    }

    @Bean
    public String KEY() {
        return  "ZGV2OiFAIyQlYXBp"; //environment.getProperty("EXPERT.API.HEADER");
    }
}
