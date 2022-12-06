//
//  AddViewController.swift
//  TP-todolist
//
//  Created by Clement Ghys on 29/11/2022.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var addDesc: UITextField!
    @IBOutlet weak var addName: UITextField!
   
    @IBOutlet weak var addDatePicker: UIDatePicker!
    
    var data: Task?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
