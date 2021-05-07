package fr.formation.afpa.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = {"fr.formation.afpa.*"})
public class ApplicationConfigurerAdapter extends WebMvcConfigurationSupport{
	
	@Bean(name="viewResolver")
	public InternalResourceViewResolver viewResolver() {
		
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("WEB-INF/pages/");
		resolver.setSuffix(".jsp");
		return resolver;
		
	}
	
	@Bean(name="messageSource")
	public MessageSource getMessageRessource() {
		ReloadableResourceBundleMessageSource messageRessource = new ReloadableResourceBundleMessageSource();
		messageRessource.setBasename("classpath:i18n/messages");
		messageRessource.setDefaultEncoding("UTF-8");
		return messageRessource;
	}
	
	@Bean(name="localeResolver")
	public LocaleResolver getLocalResolver() {
		SessionLocaleResolver resolver = new SessionLocaleResolver();
		return resolver;
		
	}
	
	
	
}
