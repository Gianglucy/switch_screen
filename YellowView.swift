//
//  YellowView.swift
//  AutoSwitchScreen
//
//  Created by Apple on 4/28/20.
//  Copyright © 2020 NguyenDucLuu. All rights reserved.
//

import UIKit

class YellowView: UIViewController {
    
    var time = Timer()
    var dem:Int = 1
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
//        lblNumber.text = String(dem)
        if dem == 6 {
            let sb = UIStoryboard.init(name: "Main", bundle: nil)
            let screenOrange = sb.instantiateViewController(withIdentifier: "ORANGE") as! OrangeView
            time.invalidate()
            self.navigationController?.pushViewController(screenOrange, animated: true)
        }
    }
    
}
