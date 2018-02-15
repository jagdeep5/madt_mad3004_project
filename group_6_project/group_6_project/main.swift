//
//  main.swift
//  group_6_project
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
// admin Login
var a1 = Administrator()
a1.display()


//user login
var r1 = User()
r1.register(customerId: "Robin123",customerName: "Robin", address: " 222 Sheppard Ave Toronto", email: "Robin@gmail.com" ,customerPassword : "123")
r1.verifyLogin(userId: "Robin123" , password : "123")

// add credit card info
var r2 = Customer()
r1.addCreditCard(Name: "Robin Sharma", creditCardNumber: 1234567890123456, Expiry: "10/20")
r1.creditCardInfo?.append(r1)

// Dictionary for Customerdetails
print("\n")
print("******************* Customer Details ******************** ")
var dictcust = [String : Customer]()
dictcust.updateValue(r1, forKey: "Customer1")

for cObject in dictcust
{
    cObject.value.display()
}
// Update Profile
print("\n")
print("******************* Update Profile Details ******************** ")
r1.customerId = "Robin123"
r1.customerPassword = "123"
r1.updateProfile(customerName: "Robin", address: " 2 Sheppard Ave Toronto", email: "Robin@gmail.com")

// Order Details
var s1 = ShippingInfo(shippingId: 1 , shippingType: "Home Devlivery" ,shippingCost: 10 ,shippingRegionid: 1)
var s2 = ShippingInfo(shippingId: 2 , shippingType: "In store pickup" ,shippingCost: 100 ,shippingRegionid: 3)

var o1 = Orderdetails(orderId: 1, dateCreated: Date() ,dateShipped: Calendar.current.date(byAdding: .day, value: 1, to: Date())! ,status: "Shipped" ,shippingDetail: s1)

// Dictionary for orderdetails
var dictorder = [String : Orderdetails]()
dictorder.updateValue(o1, forKey: "order1")

for oObject in dictorder
{
    oObject.value.display()
}



// shopping cart -1
print("******************* Shopping Cart Details ******************** ")
var sc1 = ShoppingCart()
sc1 = ShoppingCart(cartId: 1, productId: 1, productName: "Hard drive", quantity: 2, productPrice: 120.00, dateAdded: Date())

var sc11 = ShoppingCart()
var sc2 = ShoppingCart()
var sc3 = ShoppingCart()
var sc4 = ShoppingCart()
var sc5 = ShoppingCart()
sc2.cartId = 1
sc11.addCartitem(productId: 1, productName: "Hard drive", quantity: 2, productPrice: 120.00, dateAdded: Date())
sc2.addCartitem(productId: 2, productName: "ZIP drive", quantity: 2, productPrice: 90.00, dateAdded: Date())
sc3.addCartitem(productId: 3, productName: "Floppy disk", quantity: 1, productPrice: 50.00, dateAdded: Date())
sc4.addCartitem(productId: 4, productName: "Monitor  ", quantity: 1, productPrice: 300.00, dateAdded: Date())
sc5.addCartitem(productId: 5, productName: "iPhone 7 ", quantity: 1, productPrice: 900.00, dateAdded: Date())

sc1.productDetails?.append(sc1)
sc1.productDetails?.append(sc2)
sc1.productDetails?.append(sc3)
sc1.productDetails?.append(sc4)
sc1.productDetails?.append(sc5)


// Update Quantity

sc2.updateQuantity(newQuantity: 7)


//delete product
sc1.deleteItem(productId: 5)
//sc1.viewCartDetails()

//Shopping cart-2

var s12:ShoppingCart = ShoppingCart.init(cartId: 2, productId: 1, productName: "Hard drive", quantity: 2, productPrice: 120.00, dateAdded: Date())
s12.productDetails?.append(s12)

//s12.viewCartDetails()

// Dictionary for shopping cart
var dictcart = [String : ShoppingCart]()
dictcart.updateValue(sc1, forKey: "cart1")
//dictcart.updateValue(s12, forKey: "cart2")
for sObject in dictcart
{
    sObject.value.viewCartDetails()
}



r1.logout()


