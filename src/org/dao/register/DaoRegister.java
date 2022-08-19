package org.dao.register;

import java.util.List;

import org.modelo.register.Register;


/*
 * INTERFACE: NO SE PROGRAMA, SOLO SE AGREGAN LOS METODOS QUE SE VAN A IMPLEMENTAR
 * 
 */

public interface DaoRegister {
	
	public void addRegister(Register register);
	public List<Register> listRegisters();
	public Register getRegisterById(int id);
	public void deleteRegister(int id);

}
