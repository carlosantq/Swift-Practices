//
//  ViewController.swift
//  Hello World
//
//  Created by Carlos Antonio de Oliveira Neto on 09/05/18.
//  Copyright © 2018 Carlos Antônio de Oliveira Neto. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    //MARK: Properties
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var txtField: UITextField!
    @IBOutlet var OkBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func okClick(_ sender: UIButton) {
        
        if (txtField.text!.isEmpty){
            //create the alert
            let alert = UIAlertController(title: "Hello World",
                                          message: "Please inform your name", preferredStyle:UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }else{
            // create the alert
            let alert = UIAlertController(title: "Hello World", message: "Nice to meet you, " + txtField.text! + "", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    

}

