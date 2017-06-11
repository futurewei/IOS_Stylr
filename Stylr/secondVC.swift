//
//  SecondVCViewController.swift
//  Stylr
//
//  Created by Lai Wei on 6/9/17.
//  Copyright © 2017 Lai Wei. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    var keyword = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func search(_ sender: Any) {
        print ("yay")
        keyword = textField.text!
    }

    
    
    @IBAction func top(_ sender: Any) {
            print ("top")
    }
    
    
    
    @IBAction func glass(_ sender: Any) {
        print ("glass")

    }
    
    
    @IBAction func bot(_ sender: Any) {
        print ("bot")
    }
    
    @IBAction func shoes(_ sender: Any) {
        print ("shoes")
    }
    
    @IBAction func backHome(_ sender: Any) {
        print("hi")
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
