//
//  OrderDetails.swift
//  group_6_project
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Orderdetails : ShippingInfo
{
    var orderId: Int?
    var dateCreated: Date?
    var dateShipped: Date?
    var status: String?
    var shippingDetail: ShippingInfo?
    
    override init()
    {
        super.init()
        self.orderId = -1
        self.dateCreated = Date()
        self.dateShipped = Date()
        self.status = "No status"
        self.shippingDetail = ShippingInfo()
        
        
    }
    init(orderId: Int, dateCreated: Date ,dateShipped: Date ,status: String ,shippingDetail : ShippingInfo)
    {
        super.init()
        self.orderId = orderId
        self.dateCreated = dateCreated
        self.dateShipped = dateShipped
        self.status = status
        self.shippingDetail = shippingDetail
    }
    
    
    override func display()
    {
        
        print("***************** Order Details ******************")
        print("Order Id : \(self.orderId!)")
        print("Order Created : \(self.getForamttedDate(date: self.dateCreated!))")
        print("Order Shipped : \(self.getForamttedDate(date: self.dateShipped!))")
        print("Order Status : \(self.status!)")
        print("\n")
        print("***************** Shipping Details ******************")
        print("Shipping Id", "   Shipping Type", "        Shipping Cost", "   Shipping Region")
        self.shippingDetail?.display()
       
    }
    
    private func getForamttedDate(date: Date) -> String
    {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "EEEE, dd MMMM, yyyy"
        let formattedDate = dateFormatterPrint.string(from: date)
        return formattedDate
    }
    
  
    
}




