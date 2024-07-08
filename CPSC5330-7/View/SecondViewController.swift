//
//  SecondViewController.swift
//  CPSC5330-7
//
//  Created by user260677 on 7/8/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var reviewLabel: UILabel!
    var reviewText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        reviewLabel.text = reviewText
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
