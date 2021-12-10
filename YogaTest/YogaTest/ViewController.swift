//
//  ViewController.swift
//  YogaTest
//
//  Created by hello on 2021/11/30.
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
            layout.width = YGValue(self.view.bounds.width);
            layout.height = YGValue(self.view.bounds.height);
            layout.justifyContent = .center
        }
        
        let tableView = UITableView()
        tableView.configureLayout{ (layout) in
            layout.flex = 1
            layout.isEnabled = true
        }
        tableView.delegate = self
        tableView.dataSource = self
    }

}

