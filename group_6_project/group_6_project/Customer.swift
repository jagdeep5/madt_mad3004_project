//
//  Customer.swift
//  group_6_project
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Customer : IDisplay
{
    var customerId: String = String()
    var customerName: String?
    var address: String?
    var email: String?
    var customerPassword :String = String()
    var creditCardInfo: [Customer]?
    var Name: String?
    var creditCardNumber: Int?
    var Expiry: String?
    // var shippingInfo: ShippingInfo?
    
    init()
    {
        self.customerId = "No Id"
        self.customerName = "No Name"
        self.address = "No address"
        self.email = "No email"
        self.creditCardInfo = []
        self.Name = "no name"
        self.creditCardNumber = 0
        self.Expiry = "No expiry"
        self.customerPassword = "no password"
    }
    func register(customerId: String,customerName: String,address: String,email: String ,customerPassword : String )
    {
        self.customerId = customerId
        self.customerName = customerName
        self.address = address
        self.email = email
        self.customerPassword = customerPassword
    }
    
   
    func addCreditCard(Name: String , creditCardNumber: Int, Expiry: String)
        
    {
        self.Name = Name
        self.creditCardNumber = creditCardNumber
        self.Expiry = Expiry
         for creditcard in creditCardInfo!
         {
            creditcard.CreditCardDisplay()
         }
    }
    func CreditCardDisplay()
    {
        print("Card name : \(self.Name!)  Card Number: \( self.creditCardNumber!) Expiry: \( self.Expiry!)" )
    }
    
    
    
    func display()
    {
        if(self.email!.isValidEmail())
        {
            print("Customer Id","    Name", "            Address", "                Email" , "     Password" , separator: "\t ")
            print(self.customerId ,self.customerName! ,self.address! ,self.email! , (String.init(repeating : "*", count: self.customerPassword.count)), separator: "\t\t")
            CreditCardDisplay()
        }
        else
        {
            print("invalid email")
        }
        
    }
}
