// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.8;

contract structs_arrays{

    uint256 nroContrato;

    // struct is like a class
    struct ContratoAcciones{
        string comprador;
        uint256 nroContrato;
        uint256 cantidadAcciones;
        uint256 precioVenta;
    }

    // Se declara una "lista" de arreglos
    ContratoAcciones[] public listaContratoAcciones;
    //uint256 contadorContrato = 0;
    mapping(string => uint256) public compradorAnroContrato;

    function agregarContratoAcciones(string memory _comprador, uint256 _cantidadAcciones, uint256 _precioVenta) public{
        // Can be done like this listaContratoAcciones.push(ContratoAcciones(_cantidadAcciones,_precioVenta));

        nroContrato = nroContrato + 1;

        ContratoAcciones memory nuevoContratoAcciones = ContratoAcciones({
            comprador: _comprador,
            nroContrato: nroContrato,
            cantidadAcciones: _cantidadAcciones, 
            precioVenta: _precioVenta
            });
        listaContratoAcciones.push(nuevoContratoAcciones);

        //Mapping
        compradorAnroContrato[_comprador] = nroContrato;
    }

}