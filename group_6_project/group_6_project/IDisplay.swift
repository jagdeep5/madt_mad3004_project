//
//  IDisplay.swift
//  group_6_project
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

protocol IDisplay
{
   func display()
    
    
}
extension Float
{
    func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}

extension Int{
    
    func units() -> String
    {
        return String.init(format: "%d Units", self)
    }
}

extension String{
  
    func isValidEmail() -> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
        
    }
   
}
