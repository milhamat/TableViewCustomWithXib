//
//  ViewController.swift
//  TableViewCustomWithXib
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 01/06/20.
//  Copyright © 2020 Muhammad Ilham Ashiddiq Tresnawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    let names = [
        "Jhon Dun",
        "Mark Dun",
        "Lark Dun",
        "Mike Dun",
        "Bar Dun"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // pemanggilan xib
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // when tapped table
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me!")
    }
    
    // count of row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return to number of row
        return names.count
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.myLabel.text = names[indexPath.row]
        cell.myImage.backgroundColor = .gray
        //cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
}
