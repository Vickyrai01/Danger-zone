import empleado.Empleado

class Jefe inherits Empleado{
    const subordinados = #{}

    override method puedeUsar(unaHabilidad) = super(unaHabilidad) || self.algunoDeSusSubornidadosPuedeUsar(unaHabilidad)

    method algunoDeSusSubornidadosPuedeUsar(unaHabilidad) = subordinados.any({unEmpleado => unEmpleado.puedeUsar(unaHabilidad)}) 

}