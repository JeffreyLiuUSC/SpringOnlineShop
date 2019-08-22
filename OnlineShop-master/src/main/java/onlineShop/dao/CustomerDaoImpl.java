package onlineShop.dao;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
//import javax.persistence.criteria.CriteriaQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import onlineShop.model.Authorities;
import onlineShop.model.Cart;
import onlineShop.model.Customer;
import onlineShop.model.Product;
import onlineShop.model.User;
@Repository
public class CustomerDaoImpl implements CustomerDao {
	
	@Autowired
	private SessionFactory sessionFactory;
    public void addCustomer(Customer customer) {
		customer.getUser().setEnabled(true);

		Authorities authorities = new Authorities();
		authorities.setAuthorities("ROLE_USER");
		authorities.setEmailId(customer.getUser().getEmailId());

		Cart cart = new Cart();
		customer.setCart(cart);
		cart.setCustomer(customer);
		
		Session session = null;
		
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(authorities);
			session.save(customer);
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session != null) {
				session.getTransaction().rollback();
			}
		} finally {
			if (session !=  null) {
				session.close();
			}
		}

    }

	public Customer getCustomerByUserName(String userName) {
		Session session = null;
		User user = null;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			CriteriaBuilder build = session.getCriteriaBuilder();
	   		CriteriaQuery<User> criteria = build.createQuery(User.class);
	   		Root<User> root = criteria.from(User.class);
	   		criteria.select(root);
	  		session.createQuery(criteria).getResultList();
//			user = (User) session.createCriteria(User.class)
//					.add(Restrictions.eq("emailId", userName))
//					.uniqueResult();
	  		
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		if (user != null)
			return user.getCustomer();
		return null;

	}
}
