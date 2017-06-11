//
//  closetController.swift
//  Stylr
//
//  Created by Lai Wei on 6/10/17.
//  Copyright © 2017 Lai Wei. All rights reserved.
//

import UIKit

class closetController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Home(_ sender: Any) {
        
      print ("why")
        guard (navigationController?.popToRootViewController(animated: true)) != nil
            else{
                return;
        }

    }
    

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
