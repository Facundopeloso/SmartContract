pragma solidity ^0.4.7;
contract Tutoria {
    
    
address idProfesor;
string materia;
address alumno;
    
constructor (string mater, address idProf) public{
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
        return 0;
    }
function cancelar() public returns (address) {
        
    }
    
function esConfirmado() public returns (address) {
        
    }
function estaConfirmado() public returns (address){
    
    }
    
}
