//
//  StartScreenViewController.swift
//  HiNoteProject
//
//  Created by user930813 on 4/22/21.
//

import UIKit

class StartScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var FirstLogIn: UIButton!
    @IBAction func FirstLogIn(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowLogIn", sender: self)
    }
    
}

