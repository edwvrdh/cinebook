//
//  BuyTicketsViewController.swift
//  CineBook
//
//  Created by Edward Huang on 21/5/22.
//

import UIKit

class BuyTicketsViewController: UIViewController {
    
    var session = ""
    var total = 0
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sessionLabel: UILabel!
    @IBOutlet weak var adultTicketsLabel: UILabel!
    @IBOutlet weak var childTicketsLabel: UILabel!
    @IBOutlet weak var seniorTicketsLabel: UILabel!
    @IBOutlet weak var studentTicketsLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        
        nameLabel.text = movieTitle
        nameLabel.sizeToFit()
        sessionLabel.text = String(session)
   //     totalLabel.text = "Total: $\(total)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToYourBooking") {
            let VC = segue.destination as! YourBookingViewController
            VC.sessionTime = sessionLabel.text!
            VC.totalPrice = totalLabel.text!
        }
    }
    
    @IBAction func adultStepperChanged(_ sender: UIStepper) {
        adultTicketsLabel.text = Int(sender.value).description
    
        totalLabel.text = "Total: $\(Int(sender.value) * 15)"
    }
    @IBAction func childStepperChanged(_ sender: UIStepper) {
        childTicketsLabel.text = Int(sender.value).description
    }
    @IBAction func seniorStepperChanged(_ sender: UIStepper) {
        seniorTicketsLabel.text = Int(sender.value).description
    }
    @IBAction func studentStepperChanged(_ sender: UIStepper) {
        studentTicketsLabel.text = Int(sender.value).description
    }
}
