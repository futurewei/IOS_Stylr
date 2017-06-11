//
//  closetController.swift
//  Stylr
//
//  Created by Lai Wei on 6/10/17.
//  Copyright © 2017 Lai Wei. All rights reserved.
//

import UIKit

class closetController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var keyword : String?
    var passIn = ""
    var dict: [String: [UIImage]] = ["red": [#imageLiteral(resourceName: "stilettos"), #imageLiteral(resourceName: "tank")] ,  "pink": [#imageLiteral(resourceName: "tennis")],"shoe": [#imageLiteral(resourceName: "tennis"), #imageLiteral(resourceName: "boots"),#imageLiteral(resourceName: "stilettos")], "top": [#imageLiteral(resourceName: "blazer"), #imageLiteral(resourceName: "tank"), #imageLiteral(resourceName: "blouse")], "bot": [#imageLiteral(resourceName: "jeans"), #imageLiteral(resourceName: "skirt")]]
    
        
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        keyword = passIn
        print (keyword!)
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomMessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        configureTableView()

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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! CustomMessageCell
        if keyword != nil
        {
            if (dict[keyword!]?.count == 1) {
                cell.img1.image = dict[keyword!]?[0]
            }else             {
                cell.img1.image = dict[keyword!]?[indexPath.row]
                if(indexPath.row+1 < (dict[keyword!]?.count)!){
                cell.img2.image = dict[keyword!]?[indexPath.row+1]
                }
                return cell
            }
            
        }else{
            cell.img1.image = #imageLiteral(resourceName: "tank")
            cell.img2.image = #imageLiteral(resourceName: "stilettos")
        }
        return cell
    }
    
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if keyword != nil
        {
            let result  = (Int)(round((Double(dict[keyword!]!.count / 2 + dict[keyword!]!.count % 2 ))))
            print (result)
            print (dict[keyword!]!.count)
            return result
            }
        return 3
    }
    
    func configureTableView() {
        tableView.estimatedRowHeight = 140
    }

}
