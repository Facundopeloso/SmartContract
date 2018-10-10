pragma solidity ^0.4.7;

contract Tutoria {

struct  tutoriaData {
address idProfesor;
string materia;
address alumno;
uint num_confirmar;
uint num_cancelar;
}

mapping(address => tutoriaData) tutoriasData;


function pedir (string mater, address Id_profsor) public{  
    t.materia = mater;
    t.idProfesor = Id_profsor;
    t.alumno = msg.sender;
    require (msg.sender != Id_profsor);  
    tutoriaData t = tutoriasData [msg.sender];
   
    }
    
    
     
function getMateria() public returns (string) {
    return tutoriasData[msg.sender].materia;
    }
    
function getIdProfesor() public returns (address) {
    return tutoriasData[msg.sender].idProfesor ;
}

function getAlumno() public returns (address) {
    return  tutoriasData[msg.sender].alumno;
    
    }
    
function confirmar() public returns (uint) {
    require(tutoriasData[msg.sender].num_confirmar == 0);
    require(tutoriasData[msg.sender].idProfesor == msg.sender);
    return tutoriasData[msg.sender].num_confirmar = 0;
        
    }
function cancelar() public returns (uint) { 
   require (tutoriasData[msg.sender].alumno == msg.sender);
    require (tutoriasData[msg.sender].num_confirmar == 0);
    require (tutoriasData[msg.sender].num_cancelar == 1);   
    return tutoriasData[msg.sender].num_cancelar = 1;
    }
    
function esConfirmado() public returns (uint) { 
    return tutoriasData[msg.sender].num_confirmar;
        
    }
function estaCancelado(address key) public returns (uint){ 
    return tutoriasData[key].num_cancelar;
    }
    
}
