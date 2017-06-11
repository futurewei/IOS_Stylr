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
    var totalFav:[UIImage] = []
    var addings :[UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalFav += addings
        print (totalFav)
        print (totalFav.count)
        imgTableView.dataSource = self
        
        
        imgTableView.register(UINib(nibName: "middleCellTableViewCell", bundle: nil), forCellReuseIdentifier: "middleCellTableViewCell")
        configureTableView()
        imgTableView.isScrollEnabled=true
        imgTableView.separatorStyle = .none
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func Home(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "middleCellTableViewCell", for: indexPath) as! middleCellTableViewCell
        cell.img.image = totalFav[indexPath.row]
        return cell
    }
    

    
    @IBAction func stary(_ sender: Any) {
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return totalFav.count
    }
    
    func configureTableView() {
        imgTableView.estimatedRowHeight = 140
    }
    
}
