//
//  Store.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

class Store{

    var items: [Item] = []
    
    init(items: [Item?]) {
        //code to disregard nil Items from store
        items.forEach { (item: Item?) in
            if item != nil{
                self.items.append(item!)
            }
        }
        print("New Store created!")
    }
    
    func buyItem(c: Customer, itemId: Int){
        //conditions
        
        let item:Item?
        
        //Search this item from the store
        item = storeHasItem(id: itemId)
        
        //If Item not found return from this function
        if(item == nil){
            print("No Item with this id found")
            //print()
            return
        }
        
        //If yes, check if the customer already has this item purchased, return from this function if the
        //customer already has this item in their itemsList
        if(isAlreadyPurchased(customer: c, item: item!)){
            print("You have already purchased \(item!.title). Please select a different Item")
            //print()
            return
        }
        
        /*
           If all goes well, check if the customer has enough balance in their gift card.
           If the customer has sufficiant balance, let them buy the item, else
           display error and return from this function
         */
        if(checkIfEnoughBalance(customer:c, item: item!)){
          
            c.balance -= item!.price
            
            let newOwnedItem = OwnedItem(id: item!.id, title: item!.title, price: item!.price)!
            
            c.itemsList.append(newOwnedItem)
            
            print("Purchase Success!")
            
            item!.printReceipt(isRefund: false, amount: item!.price)
            
        }else{
            print("Insufficiant funds in the Account")
            //print()
            return
        }
        
        
    } //buyItem
    
    func issueRefund(c: Customer, itemId: Int){
        //conditions
        
        let ownedItem:OwnedItem?
        
        ownedItem = ownedListHasItem(customer: c, itemId: itemId)
        
        if(ownedItem == nil){
            print("Item with this id is not found. You do not own this Item!")
            //print()
            return
        }
        
        if(hasRunningTimeExceeded(ownedItem: ownedItem!)){
            print("Running time for \(ownedItem!.title) has exceeded 30 mins. Refund can't be issued!")
            //print()
            return
        }
        
        /*
          If all goes well, initiate the refund
         */
        c.balance += ownedItem!.price
                
        if let index = c.itemsList.firstIndex(where: {
            $0.id == ownedItem?.id
        }){
            let removedItem = c.itemsList.remove(at: index)
            removedItem.printReceipt(isRefund: true, amount: removedItem.price)
        }
        
        
    } //issueRefund
    
    
    func findByTitle(keyword: String){
        //conditions
        
        var titleArray:[Item] = []
        
        for item in self.items{
         
            if(item.title.lowercased().contains(keyword.lowercased())){
                
                titleArray.append(item)
                
            }
        }
        
        if(titleArray.isEmpty){
            //print("Title with \(keyword) not found. Please search for another item")
            print("Sorry, no matching items found")
            //print()
        }else{
            //print("------Items Found in Store----------------")
            for item in titleArray{
                                
                if let itemType = item as? Movie{
                    //should add id #\(item.id) to output
                    print("""

                    [MOVIE] \(itemType.info)

                    """)
                    //return //this doesn't let multiple outputs display (return breaks loop on first discovery)

                }
                
                if let itemType = item as? Game{
                    //should add id #\(item.id) to output
                    print("""

                    [GAME] \(itemType.info)

                    """)
                    //return //this doesn't let multiple outputs display (return breaks loop on first discovery)
                }
                
            }
            
        }
        
        //print("Title with \(keyword) not found. Please search for another item")
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
                
                //print("Item found!")
                
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
    private func ownedListHasItem(customer:Customer, itemId:Int)->OwnedItem?{
        
        let ownedList = customer.itemsList
        
        for ownedItem in ownedList{
            
            if(ownedItem.id == itemId){
                return ownedItem
            }
        }
        return nil
    } //ownedListHasItem
    
    
    private func hasRunningTimeExceeded(ownedItem:OwnedItem)->Bool{

        return ownedItem.minutesUsed > 30
    }
    
    
}

/*
   Test Code- Working
 //        if let idx = customer.itemsList.firstIndex(of: ownedItem!){
 //
 //            customer.itemsList.remove(at: idx)
 //
 //            ownedItem?.printReceipt(isRefund: true, amount: ownedItem!.price)
 //        }
 
 extension Array where Element:Equatable{
     
     
     mutating func remove(element:Element){
         
         guard let idx = self.firstIndex(of: element) else{
             return
         }
         
         remove(at: idx)
         
     }
     
     
 }
 
 
 Search/Print
 //                if let itemType = item as? Movie{
 //                    print("[MOVIE]  \(itemType.title), $\(itemType.price)")
 //                    titleArray.append(itemType)
 //                    //return
 //                }
 //                if let itemType = item as? Game{
 //                    print("[GAME] \(itemType.title), $\(itemType.price)")
 //                    print("Publisher: \(itemType.publisher)")
 //                    print("Has Multiplayer: \(itemType.isMultiplayer.printMultiplayer(game: itemType))")
 //                    titleArray.append(itemType)
 //                    //return
 //                }

 
 */
