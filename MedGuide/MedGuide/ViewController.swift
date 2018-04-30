//
//  ViewController.swift
//  MedGuide
//
//  Created by Gior Fasolini on 25/04/18.
//  Copyright © 2018 Gior Fasolini. All rights reserved.
//

import UIKit

struct global {
    static var night = 0
}

class ViewController: UIViewController {

    @IBOutlet weak var switchTheme: UISegmentedControl!
    
    @IBAction func switchPressed() {
        if switchTheme.selectedSegmentIndex == 1 {
            self.view.backgroundColor = UIColor.black
            global.night = 1
        }
        else {
            self.view.backgroundColor = #colorLiteral(red: 0.5411764706, green: 0.7098039216, blue: 0.6117647059, alpha: 1)
            global.night = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

