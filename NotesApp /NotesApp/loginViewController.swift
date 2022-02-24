//
//  loginViewController.swift
//  NotesApp
//
//  Created by thamizharasan t on 24/02/22.
//

import UIKit

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func laginBtnAction(_ sender: Any) {
        performSegue(withIdentifier: "loginToVc", sender: nil)
    }
    @IBAction func signUpBtnAction(_ sender: Any) {
        performSegue(withIdentifier: "signIn", sender: nil)
    }
}
