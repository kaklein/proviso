package proviso.service;

/*
 * Generic interface for database manipulation
 */


public interface GenericDao<E, K> {
	
	public boolean add(E entity);
		
	public E find(K key);
	
}
