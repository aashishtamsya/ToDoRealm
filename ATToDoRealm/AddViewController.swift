//
//  AddViewController.swift
//  ATToDoRealm
//
//  Created by Aashish Tamsya on 01/06/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

import UIKit
import Realm

class AddViewController: UIViewController,UITextFieldDelegate {

    var textField : UITextField?
    var newItemText : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.whiteColor()
        setupTextField()
        setupNavigationBar()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        textField?.becomeFirstResponder()
        
    }
    
    func setupTextField() {
        textField = UITextField.init(frame: CGRectZero)
        textField?.placeholder = "Type in item"
        textField?.delegate = self
        view.addSubview(textField!)
    }
    
    func setupNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "Done", style: UIBarButtonItemStyle.Done, target: self, action: #selector(AddViewController.doneAction))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let padding = CGFloat(11)
        textField?.frame = CGRectMake(padding, self.topLayoutGuide.length + 50, view.frame.size.width - (padding * 2), 100)
        
    }
    
    func doneAction() {
        let realm = RLMRealm.defaultRealm()
        
        if self.textField?.text?.characters.count > 0 {
            let newToDoItem = ToDoItem()
            
            newToDoItem.name = (self.textField?.text)!
            
            
            do {
                
            }
            catch {
                print("something went wrong")
            }
            realm.beginWriteTransaction()
            realm.addObject(newToDoItem)
            realm.cancelWriteTransaction()
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        doneAction()
        textField.resignFirstResponder()
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
