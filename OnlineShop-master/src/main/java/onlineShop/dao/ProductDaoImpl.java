package onlineShop.dao;

import java.util.ArrayList;


import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import onlineShop.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao {
    @Autowired
    private SessionFactory sessionFactory;

    public List<Product> getAllProducts() {
   	 Session session = null;
   	 List<Product> products = new ArrayList<>();
   	 try {
   		 session = sessionFactory.openSession();
   		 session.beginTransaction();
   		 CriteriaBuilder build = session.getCriteriaBuilder();
   		 CriteriaQuery<Product> criteria = build.createQuery(Product.class);
   		 Root<Product> root = criteria.from(Product.class);
   		 criteria.select(root);
   		 products = session.createQuery(criteria).getResultList();
  		 session.getTransaction().commit();
   	 } catch (Exception e) {
   		 e.printStackTrace();
   	 } finally {
   		 if (session != null) {
   			 session.close();
   		 }
   	 }
   	 return products;
    }

    public Product getProductById(int productId) {
   	 Session session = null;
   	 Product product = null;
   	 try {
   		 session = sessionFactory.openSession();
   		 session.beginTransaction();
   		 product = (Product) session.get(Product.class, productId);
   		 session.getTransaction().commit();
   	 } catch (Exception e) {
   		 e.printStackTrace();
   	 } finally {
   		 if (session != null) {
   			 session.close();
   		 }
   	 }
   	 return product;
    }

    public void deleteProduct(int productId) {
   	 Session session = null;
   	 try {
   		 session = sessionFactory.openSession();
   		 session.beginTransaction();
   		 Product product = (Product) session.get(Product.class, productId);
   		 session.delete(product);
   		 session.getTransaction().commit();
   	 } catch (Exception e) {
   		 e.printStackTrace();
   	 } finally {
   		 if (session != null) {
   			 session.close();
   		 }
   	 }
    }

    public void addProduct(Product product) {
   	 Session session = null;
   	 try {
   		 session = sessionFactory.openSession();
   		 session.beginTransaction();
   		 session.save(product);
   		 session.getTransaction().commit();
   	 } catch (Exception e) {
   		 e.printStackTrace();
   	 } finally {
   		 if (session != null) {
   			 session.close();
   		 }
   	 }
    }

    public void updateProduct(Product product) {
   	 Session session = null;
   	 try {
   		 session = sessionFactory.openSession();
   		 session.beginTransaction();
   		 session.saveOrUpdate(product);
   		 System.out.println("update one product");
   		 session.getTransaction().commit();
   	 } catch (Exception e) {
   		 e.printStackTrace();
   	 } finally {
   		 if (session != null) {
   			 session.close();
   		 }
   	 }
    }
}

