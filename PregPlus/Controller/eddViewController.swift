//
//  eddViewController.swift
//  PregPlus
//
//  Created by Yash Mundhada on 02/06/22.
//

import UIKit

class eddViewController: UIViewController {
    let datePicker = UIDatePicker()
    
    var eddBrain = EDDBrain()
    
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
            
            eddBrain.calculateDate(eddDate: dateObject)
            print("Dateobj: \(dateFormatter.string(from: dateObject))")
        }
        
        self.performSegue(withIdentifier: "EDDResultView", sender: self)
        
        
        
        //        LmsDate = dateFormatter.string(from: LmsDate!)
        //        print(LmsDate ?? "Yash")
        //        eddBrain.calculateDate(eddDate: LmsDate!)
          
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EDDResultView" {
            let destinationVC = segue.destination as! eddResultViewController
            destinationVC.dateValue = eddBrain.getFutureDate()
            
            
        }
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


extension eddViewController{
    
    
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
