pragma solidity ^0.4.7;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./tutoria.sol";

contract tutoriaTest {
   
    Tutoria tutoriaParaTest;
    
    address profesor = _profesor;
    string memory materia = msg.sender;
    address alumno = _alumno;
    
    function debeCrearUnaTutoria () {
        
        tutoriaParaTest = new Tutoria(profesor, materia);
        
        Assert.equal(tutoriaParaTest.getProfesor(), profesor, "Deberia obtener el profesor de la tutoria");
        Assert.equal(tutoriaParaTest.getMateria(), "Paradigma", "Deberia obtener la materia de la tutoria");
        Assert.equal(tutoriaParaTest.getAlumno(), alumno, 'Deberia obtener el alumno de la tutoria');
        
        Assert.equal(tutoriaParaTest.esConfirmado(), 0, 'Deberia devolver que no esta confirmada una tutoria');

    }
    
    function debeConfirmarUnaTutoria () {
        
        Assert.equal(tutoriaParaTest.confirmar(), 1, 'Deberia confirma una tutoria');
        
        Assert.equal(tutoriaParaTest.esConfirmado(), 1, 'Deberia devolver que esta confirmada una tutoria');
        
    }
    
    
     function debeCancelarUnaTutoria () {
        
        Assert.equal(tutoriaParaTest.cancelar(), 1, 'Deberia cancelar una tutoria');
        
        Assert.equal(tutoriaParaTest.estaConfirmado(), 0, 'Deberia devolver que no esta confirmada una tutoria');

    }
    
    
}
