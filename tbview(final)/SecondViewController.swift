//
//  SecondViewController.swift
//  tbview(final)
//
//  Created by Student016 on 31/07/18.
//  Copyright © 2018 ra. All rights reserved.
//

import UIKit

class SecondViewController:
UIViewController,UITableViewDataSource {
    
    
    var stringpassed = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
          print(stringpassed)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stringpassed.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text=stringpassed[indexPath.row]
        return cell
    }
}
