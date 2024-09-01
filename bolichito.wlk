import personas.*
import objetos.*

object bolichito{
    var objetoEnMostrador = 0
    var objetoEnVidriera = 0

    method objetoEnVidriera(unObjetoEnVidriera) {
      objetoEnVidriera = unObjetoEnVidriera
    }
    method objetoEnMostrador(unObjetoEnMostrador) {
      objetoEnMostrador = unObjetoEnMostrador
    }
    method objetoEnVidriera() {
      return objetoEnVidriera
    }
    method objetoEnMostrador() {
      return objetoEnMostrador
    }
    method esBrillante(){
      return objetoEnMostrador.esBrillante() and
      objetoEnVidriera.esBrillante()
    }
    method esMonocromatico(){
      return objetoEnMostrador.color() == objetoEnVidriera.color()
    }
    method estaEquilibrado(){
      return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }
    method tieneObjetoDeColor(unColor){
      return objetoEnMostrador.color() == unColor ||
      objetoEnVidriera.color() == unColor
    }
    method puedeMejorar(){
      return not self.estaEquilibrado() || self.esMonocromatico()
    }
    method puedeOfrecerAlgoA(unaPersona){
      return unaPersona.leGusta(objetoEnVidriera) ||
      unaPersona.leGusta(objetoEnMostrador)
    }
}

