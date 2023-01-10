//
//  ViewController.swift
//  Introduce Yourself
//
//  Created by David Winfield on 1/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func stepper(_ sender: UIStepper) {
        numPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var numPetsLabel: UILabel!
    
    @IBOutlet weak var petSwitch: UISwitch!
    
    @IBOutlet weak var yearSelect: UISegmentedControl!
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSelect.titleForSegment(at: yearSelect.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numPetsLabel.text!) dogs. It is \(petSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

