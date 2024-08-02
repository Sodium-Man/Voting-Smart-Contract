// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;


contract Election {
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    bool goingon = true;
    mapping(address => bool) public voters;
    mapping(uint => Candidate) public candidates;
    uint public candidatesCount;


    event votedEvent (
        uint indexed _candidateId
    );
    
