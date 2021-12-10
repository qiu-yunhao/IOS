//
//  TableViewItem.swift
//  YogaTest
//
//  Created by hello on 2021/11/30.
//

import Foundation
import UIKit
import YogaKit

class TableViewItem : UITableViewCell{
    
    let imageV : UIImageView  = {
        let image = UIImageView()
        //image.layer.cornerRadius = 25
        image.configureLayout{ (layout) in
            layout.width = 50
            layout.height = 50
            layout.marginLeft = 10
            layout.isEnabled = true
        }
        //image.isUserInteractionEnabled = true
        return image
    }()
    
    let name : UILabel = {
        let n = UILabel()
        n.text = "name"
        n.font = UIFont.systemFont(ofSize: 24)
        n.configureLayout{ (layout) in
            layout.width = 30
            layout.height = 20
            layout.marginLeft = 10
            layout.isEnabled = true
        }
        //n.isUserInteractionEnabled = true
        return n
    }()
    
    let address : UILabel = {
        let ad = UILabel()
        ad.text = "link"
        ad.configureLayout{ (layout) in
            layout.marginLeft = 10
            layout.width = 50
            layout.height = 20
        }
        return ad
    }()
    
    let imageView1 : UIImageView = {
        let pic1 = UIImageView()
        pic1.configureLayout{ (layout) in
            layout.flex = 1
        }
        return pic1
    }()
    
    let text1 : UILabel = {
        let txt1 = UILabel()
        txt1.font = UIFont.systemFont(ofSize: 16)
        txt1.text = "text1"
        txt1.configureLayout{(layout) in
            layout.flex = 1
        }
        return txt1
    }()
    
    let imageView2 : UIImageView = {
        let pic2 = UIImageView()
        pic2.configureLayout{ (layout) in
            layout.flex = 1
        }
        return pic2
    }()
    
    let text2 : UILabel = {
        let txt2 = UILabel()
        txt2.text = "text2"
        txt2.font = UIFont.systemFont(ofSize: 16)
        txt2.configureLayout{(layout) in
            layout.flex = 1
        }
        return txt2
    }()
    
    let imageView3 : UIImageView = {
        let pic3 = UIImageView()
        pic3.configureLayout{ (layout) in
            layout.flex = 1
        }
        return pic3
    }()
    
    let text3 : UILabel = {
        let txt3 = UILabel()
        txt3.text = "text3"
        txt3.font = UIFont.systemFont(ofSize: 16)
        txt3.configureLayout{(layout) in
            layout.flex = 1
        }
        return txt3
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        self.contentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50)
        self.contentView.configureLayout{ (layout) in
            layout.flexDirection = .column
            
        }
        
        let content = UIView()
        content.configureLayout{(layout) in
            layout.flexDirection = .column
            
        }
        content.addSubview(name)
        content.addSubview(address)
        
        let content_father1 = UIView()
        content_father1.configureLayout{ (layout) in
            layout.flexDirection = .row
        }
        content_father1.addSubview(imageV)
        content_father1.addSubview(content)
        
        
        let content_father2 = UIView()
        content_father2.configureLayout{(layout) in
            layout.flexDirection = .row
        }
        content_father2.addSubview(imageView1)
        content_father2.addSubview(text1)
        content_father2.addSubview(imageView2)
        content_father2.addSubview(text2)
        content_father2.addSubview(imageView3)
        content_father2.addSubview(text3)
        
        self.contentView.addSubview(content_father1)
        self.contentView.addSubview(content_father2)
        
        self.yoga.applyLayout(preservingOrigin: true)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
