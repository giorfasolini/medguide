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
    static var language = 0
}

class ViewController: UIViewController {

    // MARK: - IBOutlet Declaration
    @IBOutlet weak var switchTheme: UISegmentedControl!
    @IBOutlet weak var languageSwitch: UISegmentedControl!
    @IBOutlet weak var kitLabel: UILabel!
    @IBOutlet weak var naturalLabel: UILabel!
    
    
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
    
    @IBAction func changeLanguage() {
        if languageSwitch.selectedSegmentIndex == 1 {
            switchTheme.setTitle("Normal", forSegmentAt: 0)
            switchTheme.setTitle("Malam", forSegmentAt: 1)
            kitLabel.text = "KOTAK"
            naturalLabel.text = "ALAMI"
            global.language = 1
        }
        else if languageSwitch.selectedSegmentIndex == 0 {
            switchTheme.setTitle("Default", forSegmentAt: 0)
            switchTheme.setTitle("Night", forSegmentAt: 1)
            kitLabel.text = "KIT"
            naturalLabel.text = "NATURAL"
            global.language = 0
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

