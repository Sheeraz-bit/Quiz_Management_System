package util;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.Properties;

public class JPAUtil {
    private static final EntityManagerFactory entityManagerFactory;
    
    static {
        try {
            Properties props = new Properties();
            props.put("jakarta.persistence.jdbc.driver", "org.postgresql.Driver");
            props.put("jakarta.persistence.jdbc.url", "jdbc:postgresql://localhost:5432/myDb");
            props.put("jakarta.persistence.jdbc.user", "postgres");
            props.put("jakarta.persistence.jdbc.password", "sys");
            
            entityManagerFactory = Persistence.createEntityManagerFactory("quiz", props);
        } catch (Throwable ex) {
            System.err.println("Initial EntityManagerFactory creation failed: " + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static EntityManagerFactory getEntityManagerFactory() {
        if (entityManagerFactory == null) {
            throw new IllegalStateException("EntityManagerFactory is not initialized");
        }
        return entityManagerFactory;
    }
    
    public static void shutdown() {
        if (entityManagerFactory != null && entityManagerFactory.isOpen()) {
            entityManagerFactory.close();
        }
    }
}