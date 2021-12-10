//
//  ItemStore.swift
//  Homepwner
//
//  Created by hello on 2021/11/17.
//

import UIKit

class ItemStore{
    var allItems = [Item]()
    
    
    @discardableResult func createItem() -> Item {
    //这个标识符的意义是不用在意返回的对象？
        let newItem = Item(random: true)
        allItems.append(newItem)
        
        return newItem
    }
    
    init(){
        for _ in (0..<10){
            createItem()
        }
    }
}
