//
//  ViewController.swift
//  Trending
//
//  Created by hello on 2021/11/14.
//

import UIKit
import YogaKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.configureLayout{
            (layout) in
            layout.isEnabled = true
            layout.width = YGValue(self.view.bounds.size.width)
            layout.height = YGValue(self.view.bounds.size.height)
            layout.justifyContent = .center
        }
        
        let contentView = UIView()
        contentView.backgroundColor = .lightGray
        contentView.configureLayout{
            (layout) in
            layout.isEnabled = true
            layout.flexDirection = .row
            layout.width = 250
            layout.height = 160
            layout.justifyContent = .center
            layout.marginLeft = 40
            layout.padding = 20
            
        }
        
        view .addSubview(contentView)
        
        let childView1 = UIView()
        childView1.backgroundColor = .red
        childView1.configureLayout{
            (layout) in
            layout.isEnabled = true
            layout.width = 20
            layout.height = 100
            layout.marginLeft = 20
            layout.marginTop = 10
            layout.marginRight = 20
        
        }
        contentView.addSubview(childView1)
        
        let childView2 = UIView()
        childView2.backgroundColor = .blue
        childView2.configureLayout{
            (layout) in
            layout.width = 80
            layout.height = 20
            layout.alignSelf = .center
            layout.isEnabled = true
            layout.flexGrow = 1
        }
        contentView.addSubview(childView2)
        
        view.yoga.applyLayout(preservingOrigin: true)//这一步是将视图进行提交
        
    }
    


}

