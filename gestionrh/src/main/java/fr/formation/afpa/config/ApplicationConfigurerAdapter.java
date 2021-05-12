package fr.formation.afpa.config;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = { "fr.formation.afpa.*" })
@EnableWebMvc
@EnableTransactionManagement(proxyTargetClass =true)
public class ApplicationConfigurerAdapter extends WebMvcConfigurationSupport {

	@Bean(name = "viewResolver")
	public InternalResourceViewResolver viewResolver() {

		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("WEB-INF/pages/");
		resolver.setSuffix(".jsp");
		return resolver;

	}

	@Bean(name = "messageSource")
	public MessageSource getMessageRessource() {
		ReloadableResourceBundleMessageSource messageRessource = new ReloadableResourceBundleMessageSource();
		messageRessource.setBasename("classpath:i18n/messages");
		messageRessource.setDefaultEncoding("UTF-8");
		return messageRessource;
	}

	@Bean(name = "localeResolver")
	public LocaleResolver getLocalResolver() {
		SessionLocaleResolver resolver = new SessionLocaleResolver();
		return resolver;

	}

	@Bean(name = "entityManagerFactoryBean")
public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
    LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
    em.setDataSource(dataSource());
    em.setPackagesToScan(new String[] {"fr.formation.afpa.domain" });
    JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
    em.setJpaVendorAdapter(vendorAdapter);
    em.setJpaProperties(additionalProperties());
    return em;
	}
	

@Bean(name = "dataSource")
public DataSource dataSource() {
    DriverManagerDataSource dataSource = new DriverManagerDataSource();
    dataSource.setDriverClassName("com.mysql.jdbc.Driver");
    dataSource.setUrl("jdbc:mysql://localhost:3306/bd?useSSL=false");
    dataSource.setUsername("root");
    dataSource.setPassword("123456");
    return dataSource;
}

Properties additionalProperties() {
    Properties properties = new Properties();
//   properties.setProperty("hibernate.hbm2ddl.auto", "create-drop");
    properties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
    return properties;
}

@Bean(name = "transactionManager")
public JpaTransactionManager transactionManager(EntityManagerFactory emf) {
    JpaTransactionManager transactionManager = new JpaTransactionManager(emf);
    return transactionManager;
}

}
