import noPuedoCompletarMisionException.*
class Mision{
    const habilidadesRequeridas = #{}
    const peligrosidad
    const danioTotal

    method peligrosidad() = peligrosidad
    method danioTotal() = danioTotal 
    method habilidadesRequeridas() = habilidadesRequeridas 

    method puedeSerCumplidaPor(asignado) = 
        habilidadesRequeridas.all({unaHabilidad =>asignado.puedeUsar(unaHabilidad)})
    
    method serCumplidaPor(asignado) {
        if(not self.puedeSerCumplidaPor(asignado)){
            throw new NoPuedoCompletarMisionException(message = "Hay habilidades requeridas que no se poseen")
        }
        asignado.sufrirDanioDe(self)
        asignado.finalizar(self)
    }

    method enseniarHabilidadesA(unEmpleado) {
        habilidadesRequeridas.forEach({unaHabilidad => unEmpleado.aprender(unaHabilidad)})
    }
}