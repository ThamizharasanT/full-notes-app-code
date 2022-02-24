//
//  signUpViewController.swift
//  NotesApp
//
//  Created by thamizharasan t on 24/02/22.
//

import UIKit

class signUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func SignUpBtnAction(_ sender: Any) {
        performSegue(withIdentifier: "signUpToLogin", sender: nil)
        
    }
    
    @IBAction func AlreadyAccount(_ sender: Any) {
        performSegue(withIdentifier: "signUpToLogin", sender: nil)
    }
    
    
}
