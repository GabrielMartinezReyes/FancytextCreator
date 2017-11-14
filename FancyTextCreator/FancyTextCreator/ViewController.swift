//
//  ViewController.swift
//  FancyTextCreator
//
//  Created by Gabriel Martinez on 2017-11-13.
//  Copyright © 2017 Gabriel Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var shadowBtn: UIButton!
    
    var fontSize: CGFloat = 30
    
    var state = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterText(_ sender: Any) {
        label.text = textField.text
        self.resignFirstResponder()
    }
    
    @IBAction func colorRedBtn(_ sender: Any) {
        label.textColor = #colorLiteral(red: 1, green: 0.1490196078, blue: 0, alpha: 1)
    }
    
    @IBAction func colorBlueBtn(_ sender: Any) {
        label.textColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
    }
    
    @IBAction func colorGreenBtn(_ sender: Any) {
        label.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
    @IBAction func fontOneBtn(_ sender: Any) {
        label.font = UIFont(name: "SugarstyleMillenial-Regular", size: fontSize)
    }
    
    @IBAction func fontTwoBtn(_ sender: Any) {
        label.font = UIFont(name: "Moon Flower", size: fontSize)
    }
    
    @IBAction func fontThreeBtn(_ sender: Any) {
        label.font = UIFont(name: "LemonMilk", size: fontSize)
    }
    
    @IBAction func fontFourBtn(_ sender: Any) {
        label.font = UIFont(name: "Blacksword", size: fontSize)
    }
    
    @IBAction func shadowBtn(_ sender: Any) {
        if state == false{
            label.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            label.layer.shadowOffset = CGSize(width: 2, height: 2)
            label.layer.shadowRadius = 2
            label.layer.shadowOpacity = 0.25
            
            state = true
            shadowBtn.setTitle("Remove Shadow", for: UIControlState.normal)
        }else{
            label.layer.shadowOpacity = 0
            state = false
            shadowBtn.setTitle("Set Shadow", for: UIControlState.normal)

        }
    }
    
    @IBAction func sizeSmallBtn(_ sender: Any) {
        fontSize = 30
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func sizeMediumBtn(_ sender: Any) {
        fontSize = 50
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func sizeLargeBtn(_ sender: Any) {
        fontSize = 80
        label.font = label.font.withSize(fontSize)
    }
    
    
    
}

