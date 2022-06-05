//
//  eddResultViewController.swift
//  PregPlus
//
//  Created by Yash Mundhada on 03/06/22.
//

import UIKit

class eddResultViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    var dateValue: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let formatteddate = formatter.string(from: dateValue!)
        print(formatteddate)
        dateLabel.text = formatteddate
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
        
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
