//
//  MainViewController.swift
//  HiNoteProject
//
//  Created by Sam Elmore on 12/21/20.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Username: UILabel!
    @IBOutlet weak var ProfilePicture: UIImageView!
    @IBAction func PostButton(_ sender: UIButton) {
        performSegue(withIdentifier: "createPost", sender: self)
    }//brings up "createPost" screen when post button is pressed
    
    @IBAction func Settings(_ sender: UIButton) {
    }
    @IBOutlet weak var PostView: UIScrollView!
    
}

