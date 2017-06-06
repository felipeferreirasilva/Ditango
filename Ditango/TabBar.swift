//
//  TabBar.swift
//  Ditango
//
//  Created by Felipe Silva on 06/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func changeIndex(tab: Int){
        self.selectedIndex = tab;
    }
}
