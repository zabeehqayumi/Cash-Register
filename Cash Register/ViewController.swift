//
//  ViewController.swift
//  Cash Register
//
//  Created by Zabeehullah Qayumi on 9/20/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
//    var equalPrice : String = ""
//    var lessPrice : Double = 0
//    var extraPrice : Double = 0

    

    @IBOutlet weak var buttonDesign: UIButton!
    @IBOutlet weak var actualPrice: UITextField!
    @IBOutlet weak var userEnteredPrice: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonDesign.layer.cornerRadius = 15


    }

    @IBAction func butButtonPressed(_ sender: UIButton) {
        sender.pulsate()
        checkIfEmpty()
        calculate()
        
    }

    func calculate(){
        
        let aPrice = Double(actualPrice.text!)
        let ePrice  = Double(userEnteredPrice.text!)

        if aPrice == ePrice {
            
            let alert = UIAlertController(title: "Welcome for shopping !", message: "Please visit us again!", preferredStyle: .alert)
            let action = UIAlertAction(title: "OKay", style: .default) { (action) in
                
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)

            
        }
        else if aPrice! >= ePrice! {
            var equals : Double = 0
            equals = Double(ePrice! - aPrice!)

            let alert = UIAlertController(title: "You Owe !!!", message: "Please pay more \(equals) $", preferredStyle: .alert)
            let action = UIAlertAction(title: "OKay", style: .destructive) { (action) in
                
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            
        }
        else if aPrice! <= ePrice! {
            var equals : Double = 0
            equals = Double(aPrice! - ePrice!)

            let alert = UIAlertController(title: " Oh You entered extra !", message: " Please take back \(equals) $", preferredStyle: .alert)
            let action = UIAlertAction(title: "OKay", style: .destructive) { (action) in
                
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)

        }

    }
    
    func checkIfEmpty(){
        
        if actualPrice.text?.count == 0 && userEnteredPrice.text?.count == 0{
            let alert = UIAlertController(title: " Empty !", message: " Please enter prices ", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .destructive) { (action) in
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
    }
    

}
}

