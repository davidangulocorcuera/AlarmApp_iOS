//
//  WorldClockViewController.swift
//  IphoneAlarmApp
//
//  Created by Biolizard on 04/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit

class WorldClockViewController: UIViewController {
    init(){
        super.init(nibName: "WorldClockViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "worldClock")
        self.title = NSLocalizedString("tittle_worldclock", comment: "")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBarButtonsItems()
        

        // Do any additional setup after loading the view.
    }
    private func setupBarButtonsItems(){
        
        let fontAddButton = UIFont.systemFont(ofSize: 35)
        let fontEditbutton = UIFont.systemFont(ofSize: 20)
        
        let addButton = UIBarButtonItem(title: "+", style: .plain, target: self, action: #selector(onButtonPresssed))
        navigationItem.setRightBarButton(addButton, animated: false)
        let editButton = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(onButtonPresssed))
     
        
        navigationItem.setRightBarButton(addButton, animated: false)
        navigationItem.setLeftBarButton(editButton, animated: false)
        
        editButton.tintColor = UIColor.orange
        addButton.tintColor = UIColor.orange
        
        addButton.setTitleTextAttributes([NSAttributedString.Key(rawValue: NSAttributedString.Key.font.rawValue): fontAddButton],
                                         for: .normal)
        editButton.setTitleTextAttributes([NSAttributedString.Key(rawValue: NSAttributedString.Key.font.rawValue): fontEditbutton],
                                          for: .normal)
    }
    @objc private func onButtonPresssed(){
        
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
