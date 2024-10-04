class Oficinista{
    var cantEstrellas

    method saludCritica() = 40 - 5 * cantEstrellas
    
    method completar(unaMision, unEmpleado){
        cantEstrellas += 1
        if(self.puedeSerEspia()){
            unEmpleado.pasaASerEspia()
        }
    }
    method puedeSerEspia() = cantEstrellas == 3
}