package util;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAUtil {
private static final EntityManagerFactory entityManagerFactory;
static {
	try {
		entityManagerFactory=Persistence.createEntityManagerFactory("quiz");
	}catch(Throwable e) { throw new ExceptionInInitializerError(e);}
}

public static EntityManagerFactory getEntityManagerFactory() {
	return entityManagerFactory;
}

public static void shutdown() {
    if (entityManagerFactory != null && entityManagerFactory.isOpen()) {
    	entityManagerFactory.close();
    }
}
}//JPAUtil
