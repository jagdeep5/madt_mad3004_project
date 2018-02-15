//
//  User.swift
//  group_6_project
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class User :Customer
{
    var userId:String?
    var password:String?
    var loginStatus:String = String()
    
    override init()
    {
        self.userId = "abc@gmail.com"
        self.password = "1234"
        self.loginStatus = "Logged In"
        
    }
    
    func verifyLogin(userId: String , password: String)
    {
        
        self.userId = userId
        self.password = password
        if((self.userId == customerId)  && (self.password == customerPassword))
        {
            print("Customer id : \(customerId)")
            loginStatus = "User Logged In"
            print(loginStatus)
        }
        else
        {
            loginStatus = "User not logged in"
            print(loginStatus)
        }
        
        
    }
    
    func updateProfile(customerName: String,address: String,email: String)
    {
        self.customerName = customerName
        self.address = address
        self.email = email
        if((self.userId == customerId)  && (self.password == customerPassword))
        {
            
            if(self.email!.isValidEmail())
            {
                print("Customer Id","    Name", "            Address", "                Email" , "     Password" , separator: "\t ")
                print(self.customerId ,self.customerName! ,self.address! ,self.email! , (String.init(repeating : "*", count: self.customerPassword.count)), separator: "\t\t")
                print("updated")
            }
            else
            {
                print("invalid email")
            }
            
        }
        else
        {
            print("not updated")
        }
    }
    
    func logout()
    {
        if(loginStatus == "User Logged In")
        {
            print("Logged Out")
        }
        else
        {
            print("you are not logged in")
        }
    }
}
