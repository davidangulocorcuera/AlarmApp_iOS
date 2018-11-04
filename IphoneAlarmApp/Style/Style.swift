//
//  Style.swift
//  IphoneAlarmApp
//
//  Created by Biolizard on 04/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit
import Foundation
class Style{
    class func customize(){
        UINavigationBar.appearance().barTintColor = ColorStyle.navigationBarTintColor()
        UITabBar.appearance().barTintColor =  ColorStyle.navigationBarTintColor()
        UITabBar.appearance().tintColor = UIColor.orange
       
    }
}
