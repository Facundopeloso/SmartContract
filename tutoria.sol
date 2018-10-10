pragma solidity ^0.4.7
import "./tutoriaTest.sol"

address profesor;
string materia;
address alumno;


constructor(address _profesor, string _materia, address _alumno){
    profesor = _profesor;
    materia= _materia;
    alumno = msg.sender; 
}

function get profesor()public returns (address){
 returns profesor;
}

function getMateria() public returns (string){
    returns materia;
}


function getAlumno()public returns (address){
    returns alumno;
}

function getConfirmar() public returns (uint) { //Falta terminar//
    returns confitmar;
}

function getCancelar () public returns (uint){ //Falta terminar//
    returns  cancelar;
}
