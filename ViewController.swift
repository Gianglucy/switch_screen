//
//  ViewController.swift
//  AutoSwitchScreen
//
//  Created by Apple on 4/28/20.
//  Copyright © 2020 NguyenDucLuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = Timer()
    var dem:Int = 1
    var fromRoot:Bool = false
    @IBOutlet weak var lblNumber: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        lblNumber.text = "1"
        if dem==6 {
            dem = 0
            time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.callTime) , userInfo: nil, repeats: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.callTime) , userInfo: nil, repeats: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    @objc func callTime() {
        dem = dem + 1
        if dem < 6 {
            lblNumber.text = String(dem)
        }
//        lblNumber.text = String(dem)
        if dem == 6 {
            time.invalidate()
            let sb = UIStoryboard.init(name: "Main", bundle: nil)
            let screenYellow = sb.instantiateViewController(withIdentifier: "YELLOW") as! YellowView
//            dem = 0
            self.navigationController?.pushViewController(screenYellow, animated: true)
        }
    }


}

