pragma solidity ^0.4.7;

contract Tutoria {

struct  tutoriaData {
address idProfesor;
string materia;
address alumno;
uint num_confirmar;
uint num_cancelar;
bytes32 hash;
}

mapping(address => tutoriaData) tutoriasData;


function pedir (string mater, address Id_profsor) public{  
    t.materia = mater;
    t.idProfesor = Id_profsor;
    t.alumno = msg.sender;
    require (msg.sender != Id_profsor);  
    tutoriaData t = tutoriasData [msg.sender];
    t.hash = keccak256(t.alumno, t.materia, t.idProfesor, t.num_confirmar, t.num_cancelar);
    t.num_cancelar = 0;
    t.num_confirmar = 0;
    }
    
    
     
function getMateria(address key) public returns (string) {
    return tutoriasData[key].materia;
    }
    
function getIdProfesor(address key) public  returns (address) {
    return tutoriasData[key].idProfesor ;
}

function getAlumno(address key) public returns (address) {
    return  tutoriasData[key].alumno;
    
    }
    
function confirmar(address key) public view returns (uint) {
    require(tutoriasData[key].num_confirmar == 0);
    require (tutoriasData[key].num_cancelar == 0); 
    require(tutoriasData[key].idProfesor == msg.sender);
    return tutoriasData[key].num_confirmar = 1;
        
    }
function cancelar(address key) public view returns (uint) { 
   require (tutoriasData[key].alumno == msg.sender);
    require (tutoriasData[key].num_confirmar == 0);
    require (tutoriasData[key].num_cancelar == 0);   
    return tutoriasData[key].num_cancelar = 1;
    }
    
function esConfirmado(address key) public view returns (uint) { 
    return tutoriasData[key].num_confirmar;
        
    }
function estaCancelado(address key) public view returns (uint){ 
    return tutoriasData[key].num_cancelar;
    }
function getHash(address key) public view returns (bytes32) {
   return tutoriasData[key].hash;
    }
}
