//
//  ViewController.swift
//  Date_Picker_Practice1
//
//  Created by 이태윤 on 2023/07/04.
//

import UIKit

class DatePicker_ViewController: UIViewController {

    
    @IBOutlet var current_time: UILabel!
    @IBOutlet var chosen_time: UILabel!
    let time_selector : Selector = #selector(DatePicker_ViewController.updatetime)
    let interval = 1.0
    var n1 : String?
    
    @IBAction func date_picker(_ sender: UIDatePicker) {
        let datepickerview = sender
        let formatter = DateFormatter()
        let formatter_1 = DateFormatter()
        formatter_1.dateFormat = "yyyy - mm - dd / HH : mm / EEE"
        formatter.dateFormat = "yyyy - mm - dd / HH : mm : ss / EEE"
        n1 = formatter_1.string(from: datepickerview.date)
        chosen_time.text = "선택 시간 : " + formatter.string(from : datepickerview.date)
    }
    
    @objc func updatetime(){
        let datepickerview_1 = NSDate()
        let formatter = DateFormatter()
        let formatter_2 = DateFormatter()
        formatter_2.dateFormat = "yyyy - mm - dd / HH : mm / EEE"
        formatter.dateFormat = "yyyy - mm - dd / HH : mm : ss / EEE"
        current_time.text = "현재 시간 : " + formatter.string(from: datepickerview_1 as Date)
        if (n1 == formatter_2.string(from : datepickerview_1 as Date)) {
            view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: time_selector, userInfo: nil, repeats: true)
    }
    
}

