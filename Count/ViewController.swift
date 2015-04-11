//
//  ViewController.swift
//  Count
//
//  Created by Shinya Ryu on 2015/04/10.
//  Copyright (c) 2015年 Shinya Ryu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number:Int = 0
    @IBOutlet var label:UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus(){
        number += 1
        label.text = String(number)
        changeColor()
        
    }
    
    @IBAction func minus(){
        number -= 1
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func kakeru2(){
        number = number * 2
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func waru2(){
        number = number/2
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        changeColor()
    }
    
    func changeColor(){
        if(number>=10 && number < 30){
            label.textColor = UIColor.redColor()
        }else if(number>=30){
            label.textColor = UIColor.blueColor()
        }
    }

}

