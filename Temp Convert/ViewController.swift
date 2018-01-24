//
//  ViewController.swift
//  Temp Convert
//
//  Created by Lokesh Patel on 11/6/17.
//  Copyright © 2017 Lokesh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var OutputFarenheit: UITextField!
    
    @IBOutlet weak var OutputCelsius: UITextField!
    
    
    @IBAction func OutputFarenheit(_ sender: UITextField) {
        
        var convertCelcius = float_t(OutputFarenheit.text!)!
        if (OutputFarenheit == nil) {
            let NewOutputFarenheit = OutputFarenheit.text!
            print(NewOutputFarenheit)
        }
       
        
        convertCelcius = (convertCelcius - 32) * 5/9
        
        OutputCelsius!.text = String(convertCelcius)
    }
    @IBAction func OutputCelsius(_ sender: UITextField) {
        var convertFarenheit = float_t(OutputCelsius.text!)!
        
        if (OutputCelsius.text == nil) {
            let NewOutputCelsius = OutputCelsius.text!
            print(NewOutputCelsius)
        }
        
        
        convertFarenheit = (convertFarenheit * 9/5 + 32)
        
        
        OutputFarenheit!.text = String(convertFarenheit)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        OutputFarenheit.resignFirstResponder()
        OutputCelsius.resignFirstResponder()
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        OutputFarenheit.resignFirstResponder()
        OutputCelsius.resignFirstResponder()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

