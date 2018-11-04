//
//  AlarmViewController.swift
//  IphoneAlarmApp
//
//  Created by Biolizard on 04/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit

class AlarmViewController: UIViewController {
    init(){
        super.init(nibName: "AlarmViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "alarm")
        self.title = NSLocalizedString("tittle_alarm", comment: "")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    @IBOutlet weak var tableViewAlarm: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registercells()
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
    private func registercells(){
     
        
        let identifierSwitchCell = "SwitchTableViewCell"
        let cellNibSwitch = UINib(nibName: identifierSwitchCell, bundle: nil)
        tableViewAlarm.register(cellNibSwitch, forCellReuseIdentifier: "SwitchTableViewCell")
        
        tableViewAlarm.register(cellNibSwitch, forCellReuseIdentifier: identifierSwitchCell)
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
extension AlarmViewController:
UITableViewDelegate,UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell:SwitchTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "SwitchTableViewCell", for: indexPath) as? SwitchTableViewCell)!
        return cell
    }
    
    
    
    
}

