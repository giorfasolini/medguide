//
//  NaturalBleedingViewViewController.swift
//  MedGuide
//
//  Created by Christian Limansyah on 30/04/18.
//  Copyright © 2018 Gior Fasolini. All rights reserved.
//

import UIKit

class NaturalBleedingViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    let image_Natural = ["Wash_Wound", "Stop_Bleeding","Optional_Stop_Bleeding","Covering_Wound"]
    let stepLabel_Natural = [" ", "STEP 1","STEP2","STEP 3", "STEP 4"]
    let explanationLabel_Natural = ["INGREDIENT : Clean water / salt water || Corn stanch || Spiderweb || piece of cloth",
                                    "Wash and clean the wounded area by using clean water. Using salt water is highly recommended.",
                                    "put some cornstarch to stop the bleeding. Becareful not to rub it or cause any further abrasions. Then rinse with clean water",
                                    "OPTIONAL : Use spiderwebs, in a pinch. The webs will stanch the blood flow and give your cut time to clot internally.",
                                    "Cover the wounded area using piece of cloth. Or atleast cover the wounded area using clean leaves and tight around the wound."]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(image_Natural.count)
        
    }
   
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let naturalBleedingCell = tableView.dequeueReusableCell(withIdentifier: "naturalBleeding_Cell", for: indexPath) as! NaturalBleedingControllerTableViewCell
        
        naturalBleedingCell.myImage_Natural.image = UIImage(named: (image_Natural[indexPath.row] + ".jpg"))
        naturalBleedingCell.myStepLabel_Natural.text = stepLabel_Natural[indexPath.row]
        naturalBleedingCell.myExplanationLabel_Natural.text = explanationLabel_Natural[indexPath.row]
        
            return (naturalBleedingCell)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
