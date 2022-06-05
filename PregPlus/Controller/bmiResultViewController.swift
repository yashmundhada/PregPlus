//
//  bmiResultViewController.swift
//  PregPlus
//
//  Created by Yash Mundhada on 02/06/22.
//

import UIKit

class bmiResultViewController: UIViewController {

    
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    var bmiValue: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        
        //problem
        //view.backgroundColor = color
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //problem
        //self.view.backgroundColor = color
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
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
