//
//  ViewController.swift
//  Stylr
//
//  Created by Lai Wei on 6/8/17.
//  Copyright © 2017 Lai Wei. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var shirtArray = [UIImage]()
    var midArray = [UIImage]()
    var botArray = [UIImage]()
    var ornaArray = [UIImage]()
    var favitems = [UIImage]()
    var totalFav = [UIImage]()

    
    @IBOutlet weak var topImg: UIImageView!
    
    @IBOutlet weak var midImg: UIImageView!
    
    @IBOutlet weak var botImg: UIImageView!
    
    @IBOutlet weak var ornaments: UIImageView!
    
    var topcount=0
    
    var midcount = 0
    
    var botcount = 0
    
    var ornacount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        shirtArray = [#imageLiteral(resourceName: "tank"), #imageLiteral(resourceName: "blazer"), #imageLiteral(resourceName: "blouse")]
        midArray = [#imageLiteral(resourceName: "jeans"), #imageLiteral(resourceName: "skirt"), #imageLiteral(resourceName: "shorts")]
        botArray = [#imageLiteral(resourceName: "stilettos"), #imageLiteral(resourceName: "tennis"), #imageLiteral(resourceName: "boots")]
        ornaArray = [#imageLiteral(resourceName: "necklace"), #imageLiteral(resourceName: "sunglasses"), #imageLiteral(resourceName: "bag")]
        self.navigationController?.isNavigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func prev1(_ sender: Any) {
        print ("ahahha")
        topcount = (topcount + 1) % 3
        topImg.image = shirtArray[topcount]
    }
    
    
    @IBAction func prev2(_ sender: Any) {
        print ("ahahha")
        midcount = (midcount + 1) % 3
        midImg.image = midArray[midcount]
    }
    
    @IBAction func prev3(_ sender: Any) {
        print ("ahahha")
        botcount = (botcount + 1) % 3
        botImg.image = botArray[botcount]
    }
    
    @IBAction func prev4(_ sender: Any) {
        print ("ahahha")
        ornacount = (ornacount + 1) % 3
        ornaments.image = ornaArray[ornacount]
    }

    
    
    @IBAction func next1(_ sender: Any) {
        topcount = (topcount + 1) % 3
        topImg.image = shirtArray[topcount]

    }
    
    
    
    @IBAction func next2(_ sender: Any) {
        midcount = (midcount + 1) % 3
        midImg.image = midArray[midcount]
    }
    
    
    
    @IBAction func next3(_ sender: Any) {
        botcount = (botcount + 1) % 3
        botImg.image = botArray[botcount]
    }
    
    
    
    @IBAction func next4(_ sender: Any) {
        ornacount = (ornacount + 1) % 3
        ornaments.image = ornaArray[ornacount]
    }
    
    
    @IBAction func favoriteItem(_ sender: Any) {
        favitems=[topImg.image!, midImg.image!, botImg.image!, ornaments.image!]
        totalFav+=favitems
        print (totalFav)
    }
    
    

    

    
  
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        // get a reference to the second view controller
    //    let secondViewController = segue.destination as! SecondVC
        
        // set a variable in the second view controller with the String to pass
      //  secondViewController.receivedString = textField.text!
    //}
}

