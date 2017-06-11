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
    var trigger = "None"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func search(_ sender: Any) {
        trigger = "search"
        keyword = textField.text!
        self.performSegue(withIdentifier: "gotoDisplay", sender: self)
    }
    
    @IBAction func top(_ sender: Any) {
            trigger = "top"
            keyword = "top"
            self.performSegue(withIdentifier: "gotoDisplay", sender: self)
    }
    
    
    
    @IBAction func glass(_ sender: Any) {
        trigger = "top"
        keyword = "top"
        self.performSegue(withIdentifier: "gotoDisplay", sender: self)
    }
    

    @IBAction func bot(_ sender: Any) {
       trigger = "bot"
       keyword = "bot"
       self.performSegue(withIdentifier: "gotoDisplay", sender: self)
    }
    


    @IBAction func shoe(_ sender: Any) {
        trigger = "shoe"
        keyword = "shoe"
        self.performSegue(withIdentifier: "gotoDisplay", sender: self)
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoDisplay" {
        
            let nextView = segue.destination as! closetController

            if (trigger == "top")
            {
                nextView.passIn = "top"
            }else if (trigger == "shoe")
            {
                nextView.passIn = "shoe"
            }else if (trigger == "bot")
            {
                nextView.passIn = "bot"
            }
            else {
            nextView.passIn = textField.text!
            }
        }else {
                   
        }
    }
}

