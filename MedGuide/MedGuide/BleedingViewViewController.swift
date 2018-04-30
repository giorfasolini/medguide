//
//  BleedingViewViewController.swift
//  MedGuide
//
//  Created by Christian Limansyah on 30/04/18.
//  Copyright © 2018 Gior Fasolini. All rights reserved.
//

import UIKit

class BleedingViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let images = ["alkohol+bandage","Clean_Wound", "Apply_Alcohol","Apply_Bandage"]
    let stepLabel = [" ","STEP 1", "STEP 2", "STEP 3"]
    let explanationLabel = ["INGREDIENT : Alcohol + Bandage",
                            "Clean the wound by using clean water. Warm water or salt water are reccomended.",
        "Wipe the wounded area using the medical alcohol by using clean cloth or bandage.",
        "Wrap tightly the part of wounded area. bandage is recommended, alternative : cloth"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (images.count)
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let bleedingCell = tableView.dequeueReusableCell(withIdentifier: "Bleeding_Cell", for: indexPath) as! BleedingViewControllerTableViewCell
        
        bleedingCell.myImage_Bleeding.image = UIImage(named: (images[indexPath.row] + ".jpg"))
        bleedingCell.myStepLabel_Bleeding.text = stepLabel[indexPath.row]
        bleedingCell.myExplanation_Bleeding.text = explanationLabel[indexPath.row]
        
        return (bleedingCell)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if global.night == 1 {
            self.view.backgroundColor = UIColor.black
        }
        else {
            self.view.backgroundColor = #colorLiteral(red: 0.2921254337, green: 0.7372629046, blue: 0.5889239311, alpha: 1)
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
