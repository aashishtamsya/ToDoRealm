//
//  ViewController.swift
//  ATToDoRealm
//
//  Created by Aashish Tamsya on 31/05/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

import UIKit
import Realm

class ViewController: UIViewController {

    var todos : RLMResults {
        
        return ToDoItem.allObjects()
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
//        tableView.registerClass(UITableView.self, forCellReuseIdentifier: "cell")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        tableView.reloadData()
        
    }
    
    
    @IBAction func addAction(sender: AnyObject) {
        
        let vc : AddViewController = self.storyboard?.instantiateViewControllerWithIdentifier("AddViewController") as! AddViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

}

extension ViewController : UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(todos.count)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        let index = UInt(indexPath.row)
        
        let todoItem : ToDoItem = todos.objectAtIndex(index) as! ToDoItem
        
        cell.textLabel?.text = todoItem.name
        
        return cell
    }
    
}

extension ViewController : UITableViewDelegate {
    
}