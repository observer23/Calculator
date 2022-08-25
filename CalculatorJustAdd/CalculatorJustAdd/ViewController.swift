//
//  ViewController.swift
//  CalculatorJustAdd
//
//  Created by Ekin Atasoy on 21.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sonucLabel: UILabel!
    
    @IBOutlet weak var buttonsi: UIButton!
    
    var result = ""
    var toplama = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sonucLabel.text = ""
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
       
        switch sender.currentTitle!{
        case "+/=":
            let number = Int(result)
            toplama += number!
            result = ""
            sonucLabel.text = String(toplama)
        case "AC":
            toplama = 0
            result = ""
            sonucLabel.text = String(toplama)
            
        default:
            result="\(result)\(sender.currentTitle!)"
            sonucLabel.text = result
        
        }
        
    }
}
