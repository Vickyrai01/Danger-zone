class Equipo{
    const empleados

    method puedeUsar(unaHabilidad) =
        empleados.any({unEmpleado => unEmpleado.puedeUsar(unaHabilidad)})

    method sufrirDanioDe(unaMision) {
        empleados.map({unEmpleado => unEmpleado.perderVida(unaMision.danioTotal().div(3))})
    }
    method finalizar(unaMision) {
      empleados.map({unEmpleado => unEmpleado.finalizar(unaMision)})
    }
}