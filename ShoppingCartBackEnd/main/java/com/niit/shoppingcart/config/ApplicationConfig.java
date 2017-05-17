package com.niit.shoppingcart.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;

import java.sql.*;
import java.util.Properties;
import com.niit.shoppingcart.domain.*;

import javax.sql.DataSource;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.InvalidTransactionException;
import javax.transaction.NotSupportedException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import javax.transaction.Transaction;


@Configuration
@ComponentScan("com.niit.shoppingcart")
@EnableTransactionManagement
public class ApplicationConfig 
{

	@Bean(name="dataSource")
	public DataSource getH2DataSource()
	{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		return dataSource;
	}
	
	private Properties getHibernateProperties()
	{
		Properties properties=new Properties();
		/*properties.setProperty("hibernate.hbm2ddl.auto", "update");*/
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.format_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		return properties;
	}
	
	@Autowired
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource)
	{
		LocalSessionFactoryBuilder sessionBuilder=new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		//sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.scanPackages("com.niit");
		return sessionBuilder.buildSessionFactory();
	}
	
	@Autowired
	@Bean(name="transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
		HibernateTransactionManager transactionManager=new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}
			
	/*@Autowired
	@Bean(name="productDAO")
	public ProductDao getProductDAO(SessionFactory sessionFactory)
	{
		System.out.println("Product instance created");
		return new ProductDaoImpl(sessionFactory);
	}*/
	
}
