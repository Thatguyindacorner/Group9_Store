//
//  Store.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

class Store{
    //i think items should be static cause we dont want to initlaize a store
    //but we are gonna follow assignment
    var items: [Item]
    
    init(items: [Item]) {
        self.items = items
    }
    
    func buyItem(customer: Customer, id: Int){
        //conditions
        
        let item:Item?
        
        //Search this item from the store
        item = storeHasItem(id: id)
        
        //If Item not found return from this function
        if(item == nil){
            print("No Item with this id found")
            return
        }
        
        //If yes, check if the customer already has this item purchased, return from this function if the
        //customer already has this item in their itemsList
        if(isAlreadyPurchased(customer: customer, item: item!)){
            print("You have already purchased this item before. Please select a different Item")
            return
        }
        
        /*
           If all goes well, check if the customer has enough balance in their gift card.
           If the customer has sufficiant balance, let them buy the item, else
           display error and return from this function
         */
        if(checkIfEnoughBalance(customer:customer, item: item!)){
          
            var newOwnedItem = OwnedItem(id: item!.id, title: item!.title, price: item!.price)
            
            customer.itemsList.append(newOwnedItem)
            
            print("Purchase Successful!")
            
            item!.printReceipt(isRefund: false, amount: item!.price)
            
        }else{
            print("Insufficiant funds in the Account")
            return
        }
        
        
    } //buyItem
    
    func issueRefund(customer: Customer, itemId: Int){
        //conditions
        
        let ownedItem:OwnedItem?
        
        ownedItem = ownedListHasItem(customer: customer, itemId: itemId)
        
        if(ownedItem == nil){
            print("Item with this ID not found in the customer's List. Please make sure the id is correct")
            return
        }
        
        
        
        
    }
    
    func findByTitle(keyword: String){
        //conditions
    }
    
    
    /*
      Helper methods
     */
    private func checkIfEnoughBalance(customer:Customer, item:Item)->Bool{
        
        return customer.balance > 0 && customer.balance > item.price
        
    }
    

    //Check if the Store has an Item with this Item id
    private func storeHasItem(id:Int)->Item?{
        
        for item in items{
            
            if(item.id == id){
                
                print("Item found!")
                
                return item
            }
                       
        }
        return nil
        
    } //storeHasItems
    
    
    //Check if the Customer already has this Item purchased
    private func isAlreadyPurchased(customer:Customer, item:Item)->Bool{
        
        let custOwnedList = customer.itemsList
        
        for ownedItem in custOwnedList{
            
            if(ownedItem.id == item.id){
                return true
            }
        }
       return false
    } //isAlreadyPurchased
    
    
    /*
       Helper methods for issueRefund() method
     */
    func ownedListHasItem(customer:Customer, itemId:Int)->OwnedItem?{
        
        var ownedList = customer.itemsList
        
        for ownedItem in ownedList{
            
            if(ownedItem.id == itemId){
                return ownedItem
            }
        }
        return nil
    } //ownedListHasItem
    
    
//    func hasRunningTimeExceeded(item:Item)->Bool{
//        
//        
//        
//    }
    
    
}
