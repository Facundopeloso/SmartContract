pragma solidity ^0.4.7;
contract Tutoria {
    
    
address idProfesor;
string materia;
address alumno;
uint num_confirmar = 1;
    
function pedir (string mater, address idProf) public{
        materia = mater;
        idProfesor = idProf;
        alumno = msg.sender;
        require (alumno != idProf);

    }
function getMateria() public returns (string) {
        return materia;
    }
    
function getIdProfesor() public returns (address) {
        return idProfesor;
    }
function getAlumno() public returns (address) {
        return alumno;
    }
function confirmar() public returns (uint) {
        return num_confirmar;
    }
function cancelar() public returns (address) {
        
    }
    
function esConfirmado() public returns (address) {
        
    }
function estaConfirmado() public returns (address){
    
    }
    
}
