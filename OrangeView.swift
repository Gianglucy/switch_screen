//
//  OrangeView.swift
//  AutoSwitchScreen
//
//  Created by Apple on 4/28/20.
//  Copyright © 2020 NguyenDucLuu. All rights reserved.
//

import UIKit

class OrangeView: UIViewController {
    
    var dem:Int = 1
    var time = Timer()
    @IBOutlet weak var lblNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNumber.text = "1"
            time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.callTime), userInfo: nil, repeats: true)
        }
        
        @objc func callTime() {
            dem = dem + 1
            if dem < 6 {
                lblNumber.text = String(dem)
            }
            if dem == 6 {
//                let sb = UIStoryboard.init(name: "Main", bundle: nil)
//                let screenRoot = sb.instantiateViewController(withIdentifier: "ROOT") as! ViewController
//                screenRoot.fromRoot = true
                time.invalidate()
                self.navigationController?.popToRootViewController(animated: true)
                
        }
    }
}
