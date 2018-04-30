//
//  typeOfInjuryViewController.swift
//  MedGuide
//
//  Created by Gior Fasolini on 27/04/18.
//  Copyright © 2018 Gior Fasolini. All rights reserved.
//

import UIKit

class typeOfInjuryViewController: UIViewController {

    @IBOutlet weak var messageTypeOfInjury: UILabel!
    @IBOutlet weak var bleedingMessage: UILabel!
    @IBOutlet weak var infectionMessage: UILabel!
    @IBOutlet weak var boneInjuriesMessage: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if global.language == 1 {
            messageTypeOfInjury.text = "Pengobatan apa yang anda butuhkan?"
            bleedingMessage.text = "PENDARAHAN"
            infectionMessage.text = "INFEKSI"
            boneInjuriesMessage.text = "CEDERA TULANG"
        }
        else if global.language == 0 {
            messageTypeOfInjury.text = "What Treatment Do You Need?"
            bleedingMessage.text = "BLEEDING"
            infectionMessage.text = "INFECTION"
            boneInjuriesMessage.text = "BONE INJURIES"
        }

        if global.night == 1 {
            self.view.backgroundColor = UIColor.black
            
        }
        else {
            self.view.backgroundColor = #colorLiteral(red: 0.4901960784, green: 0.7176470588, blue: 0.6039215686, alpha: 1)
        }
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
