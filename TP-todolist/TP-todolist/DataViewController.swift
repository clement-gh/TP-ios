//
//  DataViewController.swift
//  TP-todolist
//
//  Created by Clement Ghys on 29/11/2022.
//

import UIKit

class DataViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let myTask = data {
            desc.text = myTask.taskDescription
            name.text = myTask.taskName
            let dateFormater = DateFormatter()
            dateFormater.dateFormat = "dd MMM, yyyy -hh:mm:ss"
            let dateFormat = dateFormater.string(from: myTask.dueDate)
            date.text = dateFormat
            
        }
        else {
            name.text = "ERROR"
            desc.text = ""
        }
    }
    
   
    @IBOutlet weak var desc: UILabel!

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var name: UILabel!
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
//
