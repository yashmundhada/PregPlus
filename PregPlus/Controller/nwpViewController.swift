//
//  nwpViewController.swift
//  PregPlus
//
//  Created by Yash Mundhada on 02/06/22.
//

import UIKit

class nwpViewController: UIViewController {
    let datePicker = UIDatePicker()
    var nwpBrain = NWPBrain()
    
    
    @IBOutlet weak var lmsDate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        openDatePicker()
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let LmsDate = lmsDate.text
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        dateFormatter.locale = Locale.init(identifier: "en_GB")
        
        let dateObj = dateFormatter.date(from: LmsDate!)
        
        if let dateObject = dateObj{
            
            nwpBrain.calculateWeek(nwpDate: dateObject)
            print("Dateobj: \(dateFormatter.string(from: dateObject))")
        }
        
        
        self.performSegue(withIdentifier: "NWPResultView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NWPResultView" {
            let destinationVC = segue.destination as! nwpResultViewController
            
            destinationVC.weekValue = nwpBrain.getWeek()
            
            
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
    
    
}


extension nwpViewController{
    
    
    func openDatePicker(){
        
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        
        
        lmsDate.textAlignment = .center
        
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolBar.setItems([doneBtn], animated: true)
        
        lmsDate.inputAccessoryView = toolBar
        
        lmsDate.inputView = datePicker
        
        
        
    }
    
    @objc func donePressed(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        formatter.dateFormat = "dd/MM/yyyy"
        
        lmsDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
        
    }
}
