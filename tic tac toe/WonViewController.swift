//
//  WonViewController.swift
//  tic tac toe
//
//  Created by Oybek on 2/7/21.
//

import UIKit

class WonViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var winner: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(winner) is the winner"
        
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
