//
//  ViewController.swift
//  tab_bar_controller
//
//  Created by 이태윤 on 2023/07/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func move_to_imageview(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    
    @IBAction func move_to_datepicker(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    
    
    
}

