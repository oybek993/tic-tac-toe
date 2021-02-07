//
//  ViewController.swift
//  tic tac toe
//
//  Created by Oybek on 1/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var state = ""
    var winner = ""
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! WonViewController
        destinationVC.winner = winner
    }
    //sender.setImage(#imageLiteral(resourceName: "Nought"), for: .normal)
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        // UpdateUI
        if state == "x" {
            sender.setImage(#imageLiteral(resourceName: "Cross"), for: .normal)
            state = "o"
        } else {
            sender.setImage(#imageLiteral(resourceName: "Nought"), for: .normal)
            state = "x"
        }
        
        // Check
        if sender.currentImage != nil {
            if one.currentImage == #imageLiteral(resourceName: "Cross") && two.currentImage == #imageLiteral(resourceName: "Cross") && three.currentImage == #imageLiteral(resourceName: "Cross")
                || four.currentImage == #imageLiteral(resourceName: "Cross") && five.currentImage == #imageLiteral(resourceName: "Cross") && six.currentImage == #imageLiteral(resourceName: "Cross")
                || seven.currentImage == #imageLiteral(resourceName: "Cross") && eight.currentImage == #imageLiteral(resourceName: "Cross") && nine.currentImage == #imageLiteral(resourceName: "Cross")
                || one.currentImage == #imageLiteral(resourceName: "Cross") && four.currentImage == #imageLiteral(resourceName: "Cross") && seven.currentImage == #imageLiteral(resourceName: "Cross")
                || two.currentImage == #imageLiteral(resourceName: "Cross") && five.currentImage == #imageLiteral(resourceName: "Cross") && eight.currentImage == #imageLiteral(resourceName: "Cross")
                || three.currentImage == #imageLiteral(resourceName: "Cross") && six.currentImage == #imageLiteral(resourceName: "Cross") && nine.currentImage == #imageLiteral(resourceName: "Cross")
                || one.currentImage == #imageLiteral(resourceName: "Cross") && five.currentImage == #imageLiteral(resourceName: "Cross") && nine.currentImage == #imageLiteral(resourceName: "Cross")
                || three.currentImage == #imageLiteral(resourceName: "Cross") && five.currentImage == #imageLiteral(resourceName: "Cross") && seven.currentImage == #imageLiteral(resourceName: "Cross") {
                winner = "X"
                performSegue(withIdentifier: "won", sender: self)
            } else if one.currentImage == #imageLiteral(resourceName: "Nought") && two.currentImage == #imageLiteral(resourceName: "Nought") && three.currentImage == #imageLiteral(resourceName: "Nought")
                        || four.currentImage == #imageLiteral(resourceName: "Nought") && five.currentImage == #imageLiteral(resourceName: "Nought") && six.currentImage == #imageLiteral(resourceName: "Nought")
                        || seven.currentImage == #imageLiteral(resourceName: "Nought") && eight.currentImage == #imageLiteral(resourceName: "Nought") && nine.currentImage == #imageLiteral(resourceName: "Nought")
                        || one.currentImage == #imageLiteral(resourceName: "Nought") && four.currentImage == #imageLiteral(resourceName: "Nought") && seven.currentImage == #imageLiteral(resourceName: "Nought")
                        || two.currentImage == #imageLiteral(resourceName: "Nought") && five.currentImage == #imageLiteral(resourceName: "Nought") && eight.currentImage == #imageLiteral(resourceName: "Nought")
                        || three.currentImage == #imageLiteral(resourceName: "Nought") && six.currentImage == #imageLiteral(resourceName: "Nought") && nine.currentImage == #imageLiteral(resourceName: "Nought")
                        || one.currentImage == #imageLiteral(resourceName: "Nought") && five.currentImage == #imageLiteral(resourceName: "Nought") && nine.currentImage == #imageLiteral(resourceName: "Nought")
                        || three.currentImage == #imageLiteral(resourceName: "Nought") && five.currentImage == #imageLiteral(resourceName: "Nought") && seven.currentImage == #imageLiteral(resourceName: "Nought") {
                winner = "O"
                performSegue(withIdentifier: "won", sender: self)
            } else {
                print("gaming...")
            }
        } else {
            print("nil")
        }
    }
    @IBAction func restart(_ sender: UIButton) {
        one.setImage(.none, for: .normal)
        two.setImage(.none, for: .normal)
        three.setImage(.none, for: .normal)
        four.setImage(.none, for: .normal)
        five.setImage(.none, for: .normal)
        six.setImage(.none, for: .normal)
        seven.setImage(.none, for: .normal)
        eight.setImage(.none, for: .normal)
        nine.setImage(.none, for: .normal)
        
    }
    
}



