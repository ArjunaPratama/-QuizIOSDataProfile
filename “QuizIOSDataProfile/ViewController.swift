//
//  ViewController.swift
//  “QuizIOSDataProfile
//
//  Created by Arjuna on 23/01/18.
//  Copyright © 2018 Arjuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etalamat: UITextField!
    @IBOutlet weak var ettlp: UITextField!
    @IBOutlet weak var etemail: UITextField!
    @IBOutlet weak var etname: UITextField!
    @IBOutlet weak var lblhasil: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    
    @IBAction func btnhasil(_ sender: Any) {
        
        let nama = etname.text
        let tlp = ettlp.text
        let email = etemail.text
        let alamat = etalamat.text
        
        if nama == ""{
            //alert dialog
            let alertController = UIAlertController(title: "Warning", message: "Please input only Full Name", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            alertController.addAction(UIAlertAction(title: "NO", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
            
        } else if (alamat == "" ){
            //alert dialog
            let alertController = UIAlertController(title: "Warning", message: "Please input Address", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            alertController.addAction(UIAlertAction(title: "NO", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }else  if (tlp == "") {
                //alert dialog
                let alertController = UIAlertController(title: "Warning", message: "Please input only Phone", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                alertController.addAction(UIAlertAction(title: "NO", style: .default, handler: nil))
                present(alertController, animated: true, completion: nil)
            
            } else if (email == ""){
                //alert dialog
                let alertController = UIAlertController(title: "Warning", message: "Please input on Email"
                    , preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                alertController.addAction(UIAlertAction(title: "NO", style: .default, handler: nil))
                present(alertController, animated: true, completion: nil)
        }else{
            lblhasil.text = "Name =" + nama! + ", Email :" + email!  + ", Phone =" + tlp! + ", Alamat :"  + alamat!
        }
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

