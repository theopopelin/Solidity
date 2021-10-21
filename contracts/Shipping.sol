// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Shipping {
    address public livreur = 0xc71fDbDE4938D7605528FD998a7a5F5420eAbB6A;
    string etat = "Pending";

    function SetShipped(string memory _etat) public{
    _etat = "Shipped";
    emit onEtatChange(etat);
    }

    function SetDelivered(string memory _etat) public{
    _etat = "Delivered";
    emit onEtatChange(etat);
    }

    function Tip(address payable _livreur, uint32 _montant) public payable{
    _livreur.transfer(_montant);
    }
    
    event onEtatChange(string _etat);
    
}