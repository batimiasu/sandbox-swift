//
//  ViewController.swift
//  Omikuji
//
//  Created by niki on 2016/02/29.
//  Copyright © 2016年 batimiasu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLable: UILabel!
    @IBAction func getOmikuji(sender: AnyObject) {
        let results = [
            "大吉",
            "吉",
            "中吉",
            "凶",
            "大凶"
        ]
        // 乱数を生成
        // 0 - n
        let random = arc4random_uniform(UInt32(results.count))

        // 大吉の時に赤文字
        if random == 0 {
            self.myLable.textColor = UIColor.redColor()
        } else {
            self.myLable.textColor = UIColor.blackColor()
        }
        // result[乱数]をmyLabelに表示
        self.myLable.text = results[Int(random)]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

