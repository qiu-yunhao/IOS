//
//  ItemCell.swift
//  More
//
//  Created by hello on 2021/11/18.
//

import UIKit

class ItemCell : UITableViewCell {
    
    @IBOutlet var name : UILabel!
    
    @IBOutlet var img : UIImageView!
    
    @IBOutlet var num : UILabel!
    
    override init(style: UITableViewCell.CellStyle , reuseIdentifier reuseIndentifier: String? ){
        super.init(style: style, reuseIdentifier: reuseIndentifier)
        
        self.img = UIImageView(frame: CGRect(x: 90, y: 10, width: 40, height: 40))
        self.img.image = UIImage(named: "心甘情愿1")
        self.img.layer.masksToBounds = true
        self.img.layer.cornerRadius = 20
        
        
        self.name = UILabel(frame: CGRect(x: 40, y: 10, width:40 , height: 40))
        self.name.text = "qyh"
        
        self.num = UILabel(frame: CGRect(x: 250, y: 10, width: 25, height: 40))
        self.num.text = "520"
        
        self.addSubview(self.img)
        self.addSubview(self.num)
        self.addSubview(self.name)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
