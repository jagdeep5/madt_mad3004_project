//
//  Administrator.swift
//  group_6_project
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Administrator : IDisplay
{
    
    var adminName: String = String()
    var email: String = String()
    
    init()
    {
        self.adminName = "Group-6"
        self.email = "group6@gmail.com"
    }
    func display()
    {
        if(self.email.isValidEmail())
        {
            print("Admin name: \(self.adminName) \nAdmin email: \(self.email)  ")
            print("Admin Logged in")
        }
        else
        {
            print("invalid email")
        }
        
    }
    func updateCatalog(adminName: String ,email: String)
    {
        self.adminName = adminName
        self.email = email
    }
}
