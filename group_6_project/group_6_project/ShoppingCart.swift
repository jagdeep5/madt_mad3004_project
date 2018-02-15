//
//  ShoppingCart.swift
//  group_6_project
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class ShoppingCart : IDisplay
{
   
    
    var cartId: Int?
    var productId:Int?
    var productName: String?
    var productPrice: Float?
    var quantity: Int?
    var dateAdded: Date?
    var subTotal: Float = Float()
    var productDetails:[ShoppingCart]?
  
    
    init()
    {
        self.cartId = -1
        self.productId = -1
        self.quantity = -1
        self.dateAdded = Date()
    }
    init(cartId: Int,productId:Int , productName: String, quantity: Int ,productPrice: Float,dateAdded: Date)
    {
        self.cartId = cartId
        self.productId = productId
        self.productName = productName
        self.quantity = quantity
        self.productPrice = productPrice
        self.dateAdded = Date()
        self.productDetails = []
    }
    
    //Get cart id
    var getCartId : Int
    {
        get
        {
            return self.cartId!
        }
    }
    
    //Get cart id
    var getproductId : Int
    {
        get
        {
            return self.productId!
        }
    }
    
    // Add items to cart
    func addCartitem(productId:Int , productName: String, quantity: Int  ,productPrice: Float ,dateAdded: Date)
    {
        
       
        if(getCartId == cartId )
        {
            self.productId = productId
            self.productName = productName
            self.quantity = quantity
            self.productPrice = productPrice
            self.dateAdded = Date()
            self.productDetails = []
            
        }
    }
    
    // show all products
    func ShowAddedItems()
    {
         print("------------------------------------------------------------------------------------------------------")
         print("Product Id:" , "Product name:" , "Quantity:" , "Product Price:" ," Date : ")
         print("------------------------------------------------------------------------------------------------------")
        for product in self.productDetails!
        {
            product.display()
        }
   }
    
   // Quantity update
    func updateQuantity(newQuantity: Int)
        
    {
        if((getCartId == cartId)  && (getproductId == productId!))
            
        {
            self.quantity = (self.quantity! + newQuantity)
            //print("updated")
        }
        else
        {
            print("not updated")
        }
        
    }
    // Print products
    func display()
    {
        print(self.productId!, self.productName!, self.quantity!.units(), self.productPrice!.currency(),self.getForamttedDate(date: self.dateAdded!), separator:"\t\t\t\t" )
    }
    
    // Calculate Total price
    func calcPrice()-> Float
    {
        var finalTotal: Float = 0.0
        for product in productDetails!
        {
            finalTotal = finalTotal + (Float(product.productPrice!) * Float(product.quantity!))
        }
        return finalTotal
    }
    
    // Show cart detail
    func viewCartDetails()
    {
        print("Order Id : \(self.cartId!)")
        print("------------------------------------------------------------------------------------------------------")
       print("Product Id:" , "   Product name:" , "    Quantity:" , "         Product Price:" ,"             Date : ")
         print("------------------------------------------------------------------------------------------------------")
        for product in self.productDetails!
        {
            product.display()
        }
         print("------------------------------------------------------------------------------------------------------")
        print("Total: \(calcPrice().currency())")
        print("------------------------------------------------------------------------------------------------------")
        print("\n\n")
    }
    
    // Remove item
    func deleteItem(productId:Int)
    {
        var arrayNewProducts:[ShoppingCart] = [ShoppingCart]()
        for product in self.productDetails!
        {
            if product.productId != productId
            {
                arrayNewProducts.append(product)
            }
        }
        self.productDetails = arrayNewProducts
    }
    
    //Format date
    private func getForamttedDate(date: Date) -> String
    {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "EEEE, dd MMMM, yyyy"
        let formattedDate = dateFormatterPrint.string(from: date)
        return formattedDate
    }
   
    
    
}
