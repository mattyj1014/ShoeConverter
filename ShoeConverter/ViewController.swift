//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Matthew Jenks on 9/17/14.
//  Copyright (c) 2014 FiveWest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    
    
    @IBAction func convertButtonPressed(sender: UIButton)
    {
        
//        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(mensShoeSizeTextField.text.toInt()! + 30)" + "in European Show Size"
        
    }
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton)
    {
        let sizeFromTextField = Double ((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + "in European Shoe Size"
        
        
    }
    
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

