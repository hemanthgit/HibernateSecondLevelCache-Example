package com.mhk.poc.service;

import org.hibernate.Session;

import com.mhk.poc.pojo.Country;
import com.mhk.poc.util.HibernateUtility;

public class Main {
	public static void main(String[] args) {
		System.out.println("Temp Dir:" + System.getProperty("java.io.tmpdir"));
		Session session = HibernateUtility.getSessionFactory().openSession();

		session.beginTransaction();

		Country country = null;

		country = (Country) session.load(Country.class, 1L);
		
		System.out.println("Country from the Database => "+country);
		System.out.println();

		System.out.println("Going to print Country *** from First Level Cache");
		// second time loading same entity from the first level cache
		country = (Country) session.load(Country.class, 1l);
		System.out.println(country);
		
		// removing country object from the first level cache.
		session.evict(country);
		System.out.println("Object removed from the First Level Cache");
		System.out.println();
		System.out
				.println("Going to print Country *** from Second level Cache");
		country = (Country) session.load(Country.class, 1l);
		System.out.println(country);
		session.getTransaction().commit();

		// loading object in another session
		Session session2 = HibernateUtility.getSessionFactory().openSession();
		session2.beginTransaction();
		System.out.println();
		System.out
				.println("Printing Country *** from Second level Cache in another session");
		country = (Country) session2.load(Country.class, 1l);
		System.out.println(country);
		session2.getTransaction().commit();
	}
}
