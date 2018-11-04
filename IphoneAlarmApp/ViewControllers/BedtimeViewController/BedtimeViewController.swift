//
//  BedtimeViewController.swift
//  IphoneAlarmApp
//
//  Created by Biolizard on 04/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit

class BedtimeViewController: UIViewController {
    init(){
        super.init(nibName: "BedtimeViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "bedtime")
        self.title = NSLocalizedString("tittle_bedtime", comment: "")
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
