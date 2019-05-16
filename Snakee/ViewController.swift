//
//  ViewController2.swift
//  Snakee
//
//  Created by Vivienne Cheng on 19/08/2016.
//  Copyright © 2016 Caleb Cheng. All rights reserved.
//

import UIKit

var shouldRenderGrid = false

class ViewController: UIViewController {

    @IBOutlet weak var renderGrid: UISwitch!
    
    @IBAction func history(_ sender: Any) {
        
        let child = CalendarViewController()
        self.view.addSubview(child.view)
        self.addChild(child)
        child.didMove(toParent: parent)
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shouldRenderGrid = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func renderFlipped(sender: UISwitch) {
        if renderGrid.isOn{
            shouldRenderGrid = true
        } else {
            shouldRenderGrid = false
        }
    }

    

}
