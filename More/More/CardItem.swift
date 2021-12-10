//
//  CardItem.swift
//  More
//
//  Created by hello on 2021/11/18.
//

import Foundation
import UIKit

class Card : NSObject{
    var num : Int
    var words : String?
    var image : UIImage?
    
    
    init(num : Int , words : String){
        self.num = num
        self.words = words
        self.image = UIImage(named: "心甘情愿1")
        super.init()
    }
    
    convenience init(Random : Bool  = false){
        if Random{
            let random_num = Int(arc4random())
            let random_string = ["qyh","love","byq"]
            self.init(num : Int(random_num) , words: random_string[Int(random_num % 3)])
        }else{
            self.init(num : 0 ,words : "" )
        }
    }
}
