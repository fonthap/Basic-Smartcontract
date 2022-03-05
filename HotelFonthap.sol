// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract HotelFonthap {  

  mapping (bytes32 => bool) private listVoucher;

  //---events---
  event VoucherAdded(
    address from,
    string time,   
    string room,
    bytes32 voucherhash
  );
  
  event RegistrationError(
    address from,
    string voucher,
    string reason
  );

  // store the proof for a voucher in the contract state
  function recordProof(bytes32 proof) private {
    listVoucher[proof] = true;
  }
  
  // record a voucher
  function registrationroom1(string memory time,string memory room,string memory voucher) public payable {
    
    //---check if string was previously stored---
    if (listVoucher[hashing(voucher)]) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "This Voucher was previously stored");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }

    //---check if msg.value < 0.001 ether---
    if (msg.value < 0.001 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "Value can't less than 0.001 ether");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }
 
    recordProof(hashing(voucher));
    
    //---fire the event---
    emit VoucherAdded(msg.sender, time, room, hashing(voucher));
    
  }
  function registrationroom2(string memory time,string memory room,string memory voucher) public payable {
    
    //---check if string was previously stored---
    if (listVoucher[hashing(voucher)]) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "This Voucher was previously stored");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }

    //---check if msg.value < 0.002 ether---
    if (msg.value < 0.002 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "Value can't less than 0.002 ether");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }
 
    recordProof(hashing(voucher));
    
    //---fire the event---
    emit VoucherAdded(msg.sender, time, room, hashing(voucher));
    
  }
  function registrationroom3(string memory time,string memory room,string memory voucher) public payable {
    
    //---check if string was previously stored---
    if (listVoucher[hashing(voucher)]) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "This Voucher was previously stored");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }

    //---check if msg.value < 0.003 ether---
    if (msg.value < 0.003 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "Value can't less than 0.003 ether");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }
 
    recordProof(hashing(voucher));
    
    //---fire the event---
    emit VoucherAdded(msg.sender, time, room, hashing(voucher));
    
  }
  function registrationroom4(string memory time,string memory room,string memory voucher) public payable {
    
    //---check if string was previously stored---
    if (listVoucher[hashing(voucher)]) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "This Voucher was previously stored");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }

    //---check if msg.value < 0.004 ether---
    if (msg.value < 0.004 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "Value can't less than 0.004 ether");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }
 
    recordProof(hashing(voucher));
    
    //---fire the event---
    emit VoucherAdded(msg.sender, time, room, hashing(voucher));
    
  }
  function registrationroom5(string memory time,string memory room,string memory voucher) public payable {
    
    //---check if string was previously stored---
    if (listVoucher[hashing(voucher)]) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "This Voucher was previously stored");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }

    //---check if msg.value < 0.005 ether---
    if (msg.value < 0.005 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "Value can't less than 0.005 ether");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }
 
    recordProof(hashing(voucher));
    
    //---fire the event---
    emit VoucherAdded(msg.sender, time, room, hashing(voucher));
    
  }
  function registrationroom6(string memory time,string memory room,string memory voucher) public payable {
    
    //---check if string was previously stored---
    if (listVoucher[hashing(voucher)]) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "This Voucher was previously stored");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }

    //---check if msg.value < 0.006 ether---
    if (msg.value < 0.006 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, voucher, "Value can't less than 0.006 ether");
        //---refund back to the sender---
        payable(msg.sender).transfer(msg.value);
        //---exit the function---
        return;
    }
 
    recordProof(hashing(voucher));
    
    //---fire the event---
    emit VoucherAdded(msg.sender, time, room, hashing(voucher));
    
  }
  // SHA256 for Integrity
  function hashing(string memory name) private 
  pure returns (bytes32) {
    return sha256(bytes(name));
  }
  
  // check name of student in this class
  function checkName(string memory name) public 
  view returns (bool) {
    return listVoucher[hashing(name)];
  }
}