//
//  ViewController.swift
//  Contract
//
//  Created by hello on 2021/11/28.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deal_with(string: "https://httpbin.org/image/png")
        // Do any additional setup after loading the view.
    }
    
    func deal_with(string : String?){
        guard let url = URL(string: string!) else { return }
        imageView.af.setImage(withURL: url)
    }

}

