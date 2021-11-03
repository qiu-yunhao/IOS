//
//  ViewController.swift
//  Test
//
//  Created by hello on 2021/11/2.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Result: UILabel!
    
    var str : String = ""
    var key : Bool = false
    var num1 : Float = 0
    var num2 : Float = 0
    var choose : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Result.text = "0"
    }

    @IBAction func touch_AC(_ sender: UIButton) {
        num1 = 0
        num2 = 0
        str = ""
        key = false
        choose = 0
        showResult()
    }
    
    @IBAction func touch_change(_ sender: UIButton) {
        num1 = -num1;
        showResult()
    }
    
    @IBAction func touch_bai(_ sender: UIButton) {
        num1 = num1 / 100
        showResult()
    }
    
    @IBAction func touch_dian(_ sender: UIButton) {
        if(str == ""){
            str = "0."
        }else{
            str += "."
        }
        showResult_2()
    }
    
    @IBAction func touch_0(_ sender: UIButton) {
        if(str != ""){
            str += "0"
        }
        showResult_2()
    }
    
    
    @IBAction func touch_1(_ sender: UIButton) {
        str += "1"
        showResult_2()
    }
    
    
    @IBAction func touch_2(_ sender: UIButton) {
        str += "2"
        showResult_2()
    }
    
    @IBAction func touch_3(_ sender: UIButton) {
        str += "3"
        showResult_2()
    }
    
    @IBAction func touch_4(_ sender: UIButton) {
        str += "4"
        showResult_2()
    }
    @IBAction func touch_5(_ sender: UIButton) {
        str += "5"
        showResult_2()
    }
    
    @IBAction func touch_6(_ sender: UIButton) {
        str += "6"
        showResult_2()
    }
    
    @IBAction func touch_7(_ sender: UIButton) {
        str += "7"
        showResult()
    }
    
    
    @IBAction func touch_8(_ sender: UIButton) {
        str += "8"
        showResult_2()
    }
    
    @IBAction func touch_9(_ sender: UIButton) {
        str += "9"
        showResult_2()
    }
    
    
    
    @IBAction func touch_jia(_ sender: UIButton) {
        if(!key){
            key = true
            num1 = Float(str) ?? 0
            print(num1)
        }else{
            print(num1)
            num2 = Float(str) ?? 0
            num1 = num1 + num2
            print(num1)
            print(num2)
        }
        str = ""
        choose = 1
        showResult()
    }
    
    @IBAction func touch_jian(_ sender: UIButton) {
        if(!key){
            key = true
            num1 = Float(str) ?? 0
        }else{
            num2 = Float(str) ?? 0
            num1 -= num2
        }
        str = ""
        choose = 2
        showResult()
    }
    
    
    @IBAction func touch_x(_ sender: UIButton) {
        if(!key){
            key = true
            num1 = Float(str) ?? 0
        }else{
            num2 = Float(str) ?? 0
            num1 *= num2
        }
        str = ""
        choose = 3
        showResult()
    }
    
    @IBAction func touch_chu(_ sender: UIButton) {
        if(!key){
            key = true
            num1 = Float(str) ?? 0
        }else{
            num2 = Float(str) ?? 0
            num1 /= num2
        }
        str = ""
        choose = 4
        showResult()
        
    }
    
    
    @IBAction func touch_deng(_ sender: UIButton) {
        print(num1)
        if(key){
            num2 = Float(str) ?? 0
            str = ""
            switch(choose){
            case 1:
                num1 += num2
                break
            case 2:
                num1 -= num2
                break
            case 3:
                num1 *= num2
                break
            case 4:
                num1 /= num2
                break
            default:
                break
            }
            showResult()
        }
    }
    
    
    func showResult(){
        Result.text = "\(num1)"
    }
    
    func showResult_2(){
        Result.text = str
    }
}

