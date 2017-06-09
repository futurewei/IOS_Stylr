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
        
        imgTableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        configureTableView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! CustomMessageCell
        cell.img.image = #imageLiteral(resourceName: "sunglasses")
        return cell
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func configureTableView() {
        imgTableView.rowHeight = UITableViewAutomaticDimension
        imgTableView.estimatedRowHeight = 120.0
    }
    
}
