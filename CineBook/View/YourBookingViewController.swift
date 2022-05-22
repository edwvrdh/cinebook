//
//  YourBookingViewController.swift
//  CineBook
//
//  Created by Edward Huang on 22/5/22.
//

import UIKit

class YourBookingViewController: UIViewController {
    
    var sessionTime = ""
    var totalPrice = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        
        nameLabel.text = movieTitle
        timeLabel.text = sessionTime
        totalLabel.text = totalPrice
        
        nameLabel.sizeToFit()
        
    }
    
    // go back to initial view controller
    @IBAction func continueBtn(_ sender:UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
