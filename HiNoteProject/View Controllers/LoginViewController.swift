//
//  LoginViewController.swift
//  HiNoteProject
//
//  Created by Dev Jijilal on 12/22/20.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SecondLogIn(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowMain", sender: self)
    }

}
