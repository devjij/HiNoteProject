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
    
    
    @IBOutlet weak var LoginButton: UIButton!
    
    @IBSegueAction func ClickLoginButton(_ coder: NSCoder) -> MainViewController? {
        return MainViewController()
    }
    
    


}
