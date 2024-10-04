import mision.*
import espia.espia
import oficinista.Oficinista
import noPuedoCompletarMisionException.NoPuedoCompletarMisionException

class Empleado {
    const habilidades = #{}
    var salud
    var tipoEmpleado

    method habilidades() = habilidades 

    method quedaIncapacitado() = salud < tipoEmpleado.salduCritica()
    method posee(unaHabilidad) = habilidades.contains(unaHabilidad)

    method puedeUsar(unaHabilidad) = !(self.quedaIncapacitado()) && self.posee(unaHabilidad)

    method sufrirDanioDe(unaMision) {
        salud -= unaMision.peligrosidad()
    }
    method finalizar(unaMision){
        if(salud > 0){
            self.completar(unaMision)
        }
        else{
          throw new Exception(message = "No la pude completar porque me mori")
        }
    }
    method completar(unaMision) {
        tipoEmpleado.completarMision(unaMision, self)
    }

    method aprender(unaHabilidad) {
         if(!(self.posee(unaHabilidad))){
          habilidades.add(unaHabilidad)
         }
    }
    method pasaASerEspia() {
      tipoEmpleado = espia
    }
}