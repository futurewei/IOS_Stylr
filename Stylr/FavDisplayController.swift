//
//  FavDisplayController.swift
//  Stylr
//
//  Created by Lai Wei on 6/9/17.
//  Copyright © 2017 Lai Wei. All rights reserved.
//

import UIKit

class FavDisplayController: UIViewController, UITableViewDataSource{

    @IBOutlet weak var imgTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         imgTableView.dataSource = self
        
        imgTableView.register(UINib(nibName: "CustomMessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        configureTableView()
        
        //imgTableView.separatorStyle = .none
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func Home(_ sender: Any) {
           }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! CustomMessageCell
        cell.img1.image = #imageLiteral(resourceName: "tank")
        cell.img2.image = #imageLiteral(resourceName: "stilettos")
        return cell
    }
    

    
    @IBAction func stary(_ sender: Any) {
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func configureTableView() {
        imgTableView.estimatedRowHeight = 140
    }
    
}
