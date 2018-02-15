//
//  Orders.swift
//  group_6_project
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Orders 
{
    var orderId: Int?
    var dateCreated: String?
    var dateShipped: String?
    var status: String?
    var shippingDetail: ShippingInfo?
    
     init()
    {
        self.orderId = -1
        self.dateCreated = "No date"
        self.dateShipped = "No Date"
        self.status = "No status"
        
        
        
    }
    func placeOrder()
    {
        
    }
}
