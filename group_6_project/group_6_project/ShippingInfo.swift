//
//  ShippingInfo.swift
//  group_6_project
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class ShippingInfo : ShoppingCart
{
    var shippingId:Int?
    var shippingType:String?
    var shippingCost:Float?
    var shippingRegionid: Int?
    
    override init()
    {
        super.init()
        self.shippingId = -1
        self.shippingType = ""
        self.shippingCost = -1
        self.shippingRegionid = -1
        
    }
    init (shippingId:Int , shippingType:String ,shippingCost:Float ,shippingRegionid: Int)
    {
        super.init()
        self.shippingId = shippingId
        self.shippingType = shippingType
        self.shippingCost = shippingCost
        self.shippingRegionid = shippingRegionid
    }
    func updateShippingInfo(shippingType:String ,shippingCost:Float ,shippingRegionid: Int)
    {
        self.shippingType = shippingType
        self.shippingCost = shippingCost
        self.shippingRegionid = shippingRegionid
    }
    
    override func display()
    {
        print(self.shippingId!,self.shippingType!,self.shippingCost!.currency(),self.shippingRegionid!,separator: "\t\t\t\t" )
    }
}
