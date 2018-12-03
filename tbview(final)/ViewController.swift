//
//  ViewController.swift
//  tbview(final)
//
//  Created by Student016 on 31/07/18.
//  Copyright © 2018 ra. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
var array1=["Pune","Nanded","Aurangabad","Beed"]
let imagearray1=["a","b","c","bugati"]
    var temparray1=[String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text=array1[indexPath.row]
        
        let imagename=imagearray1[indexPath.row]
        let image=UIImage(named: imagename)
        cell.imageView?.image=image
    
        return cell
        
        
    }
    
    @IBAction func ContinueAction(_ sender: UIButton) {
       let next = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        next.stringpassed = temparray1 
        self.navigationController?.pushViewController(next, animated: true)
        
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let selectedcell = cell?.textLabel?.text
        print(selectedcell!)
    
        if(cell?.accessoryType==UITableViewCellAccessoryType.none)
        {
     cell?.accessoryType=UITableViewCellAccessoryType.checkmark
         temparray1.append((cell?.textLabel?.text)!)
        print(temparray1)
            
        }
        else
        {
        cell?.accessoryType=UITableViewCellAccessoryType.none
            temparray1=[temparray1.remove(at: temparray1.index(of: (cell?.textLabel?.text)!)!)]
            print(temparray1)
            
            
        }
    }
    }
    
    
    
    


