//
//  ViewController.swift
//  Water-Tracker
//
//  Created by Ayça Işık on 2.12.2022.
//

import UIKit

class ViewController: UIViewController {
     //MARK: -UI ELEMENTS
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
   
    @IBOutlet weak var aaddwaterConstraint: NSLayoutConstraint!
    
  
    //MARK: -PROPERTIES
    
    let waterStore = DataStore()
    let targetAmount = 2700.0
    

    
//MARK: -LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
     //   myButton.setImage(UIImage(named: //"pngwing.com-3.png"), for: .normal)
    }
    
    //MARK: -FUNCTIONS
        
    //MARK: -ACTIONS
    @IBAction func addwaterbuttontapped(_ sender: Any) {
    }
    

}

    
