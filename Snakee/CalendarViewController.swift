//
//  SnakeViewController.swift
//  Snakee
//
//  Created by stephen on 2019/5/16.
//  Copyright © 2019 Caleb Cheng. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {

    override func loadView() {
        
        
        let v = UIView(frame: UIScreen.main.bounds)
        v.backgroundColor = .white
        self.view = v
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(SnakeCalendarView(frame: UIScreen.main.bounds))
        
     

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
