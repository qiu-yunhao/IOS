//
//  Item.swift
//  Homepwner
//
//  Created by hello on 2021/11/17.
//

import UIKit

class Item : NSObject{
    var name : String
    var valueInDollars : Int
    var serialNumber : String?
    let dateCreate : NSDate
    
    init(name : String , valueInDollars : Int , serialNumber : String?){
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreate = NSDate()
        super.init()
    }
    
    convenience init(random : Bool = false){
        if random{
            let adjectives = ["qyh","byq"]
            let nouns = ["Android","Windows","Mac","IOS"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective)\(randomNoun)"
            let randomValueDollars = Int(arc4random_uniform(100))
            let randomSerialNumber = NSUUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name : randomName , valueInDollars : randomValueDollars , serialNumber : randomSerialNumber)
        } else{
            self.init(name : "",valueInDollars : 0,serialNumber : nil)
        }
    }
}
