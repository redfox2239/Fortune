//
//  ViewController.swift
//  AKBおみくじ
//
//  Created by HARADA REO on 2016/03/26.
//  Copyright © 2016年 reo harada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var luckyLabel: UILabel!
    @IBOutlet weak var luckyImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // ラベルを隠す
        self.luckyLabel.hidden = true
        
        // 画像を隠す
        self.luckyImageView.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func luckyButton(sender: AnyObject) {
        // ラベルを表示する
        self.luckyLabel.hidden = false
        // 画像を表示する
        self.luckyImageView.hidden = false
        // 乱数教えてよ
        let random = arc4random()%1000
        
        // randomが0のときは大吉
        // randomが1のときは中吉
        // randomが2のときは小吉
        // randomが3のときは凶
        // randomが4のときは大凶
        
        if random == 0 {
            // 大吉にしてください
            self.luckyLabel.text = "大吉"
            // 大吉の画像にしてください
            self.luckyImageView.image = UIImage(named: "大吉.jpeg")
        }
        else if random  > 0 && random < 300 {
            // 中吉にする
            self.luckyLabel.text = "中吉"
            self.luckyImageView.image = UIImage(named: "中吉.jpg")
        }
        else if random > 300 && random < 600 {
            self.luckyLabel.text = "小吉"
            self.luckyImageView.image = UIImage(named: "小吉.JPG")
        }
        else if random > 600 && random < 700 {
            self.luckyLabel.text = "凶"
            self.luckyImageView.image = UIImage(named: "凶.png")
        }
        else {
            self.luckyLabel.text = "大凶"
            self.luckyImageView.image = UIImage(named: "大凶.jpeg")
        }
        
    }

}










