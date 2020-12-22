//
//  PostViewController.swift
//  HiNoteProject
//
//  Created by Sam Elmore on 12/21/20.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ReturntoHome(_ sender: Any) {
        performSegue(withIdentifier: "returnHome", sender: self)
    }
    
    @IBAction func SongField(_ sender: Any) {
    }
    @IBAction func ArtistField(_ sender: Any) {
    }
    @IBAction func AlbumField(_ sender: Any) {
    }
    @IBAction func ReviewField(_ sender: Any) {
    }
    
    @IBAction func StarOne(_ sender: Any) {
    }
    @IBAction func StarTwo(_ sender: Any) {
    }
    @IBAction func StarThree(_ sender: Any) {
    }
    @IBAction func StarFour(_ sender: Any) {
    }
    @IBAction func StarFive(_ sender: Any) {
    }
    @IBAction func StarSix(_ sender: Any) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
