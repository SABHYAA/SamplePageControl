//
//  PagecontrollVc.swift
//  PageControl
//
//  Created by appinventiv on 19/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class PagecontrollVc: UIViewController {
    //-----------Variable Decleration---------//
    var timer: Timer!
    var updateCounter: Int!
    
    //--------------Outlets-----------//
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var imagePageControl: UIPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateCounter = 0
        self.timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
    }
    //-----------------Image getting change using page controll--------------------//
    @objc func updateTimer () {
        if (updateCounter <= 2){
            self.imagePageControl.currentPage = updateCounter
            self.weatherImageView.image = UIImage(named: String(updateCounter+1))
            self.updateCounter = self.updateCounter + 1
        }
        else{
            self.updateCounter = 0
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
