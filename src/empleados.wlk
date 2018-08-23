object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var totalGanado = 0
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){totalGanado +=self.sueldo()  }
	method totalCobrado() {return totalGanado }
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalGanado = 0
	var deudas = 0
	method venderEmpanada() { cantidadEmpanadasVendidas += 1 }
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo() { totalGanado += self.sueldo() -deudas }
	
	method gastar(aGastar) { if(totalGanado > aGastar) { totalGanado -= aGastar } 
							 else { deudas += aGastar - totalGanado }
							 }
	method totalDeudas() { return deudas }
	
	method totalDinero() { return totalGanado }
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA (empleado) { dinero -=empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}
