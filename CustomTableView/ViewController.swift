//
//  ViewController.swift
//  CustomTableView
//
//  Created by Nando Septian Husni on 5/23/18.
//  Copyright © 2018 imastudio. All rights reserved.
//

import UIKit
let city = ["PARO","THIMPHU","HAA","GASA","CHUKHA"]
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return city.count
    }
    

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as!TableViewCell
        cell.labelView.text = city[indexPath.row]
        
        cell.pictureView.image = UIImage(named: city[indexPath.row])
        
        return cell

        
    }
// to customize your table view cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

