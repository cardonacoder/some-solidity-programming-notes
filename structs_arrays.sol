// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.8;

contract structs_arrays{

    // struct is like a class
    struct ContratoAcciones{
        uint256 noAcciones;
        uint256 precioVenta;
    }

    // Se declara una "lista" de arreglos
    ContratoAcciones[] internal listaContratoAcciones;

    function agregarContratoAcciones(uint256 _noAcciones, uint256 _precioVenta) public{
        // Can be done like this listaContratoAcciones.push(ContratoAcciones(_noAcciones,_precioVenta));
        ContratoAcciones memory nuevoContratoAcciones = ContratoAcciones({noAcciones: _noAcciones, precioVenta: _precioVenta});
        listaContratoAcciones.push(nuevoContratoAcciones);
    }
}