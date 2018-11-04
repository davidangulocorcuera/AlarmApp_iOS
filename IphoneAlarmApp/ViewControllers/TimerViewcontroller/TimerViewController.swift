//
//  TimerViewController.swift
//  IphoneAlarmApp
//
//  Created by Biolizard on 04/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    init(){
        super.init(nibName: "TimerViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "timer")
        self.title = NSLocalizedString("tittle_timer", comment: "")
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
