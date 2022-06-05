//
//  nwpResultViewController.swift
//  PregPlus
//
//  Created by Yash Mundhada on 03/06/22.
//

import UIKit

class nwpResultViewController: UIViewController {

    
    @IBOutlet weak var weekLabel: UILabel!
    
    var weekValue: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let week = weekValue! / 7
        
        weekLabel.text = "\(week)"
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
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
