package cn.ecut.assetmana.config;

import cn.ecut.assetmana.filter.CrossFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class FilterConfig {

    @Autowired
    private CrossFilter crossFilter;

    @Bean
    public FilterRegistrationBean registerAuthFilter() {
        FilterRegistrationBean registration = new FilterRegistrationBean();
        registration.setFilter(crossFilter);
        registration.addUrlPatterns("/*");
        registration.setName("crossFilter");
        registration.setOrder(1);  //值越小，Filter越靠前。
        return registration;
    }
}
