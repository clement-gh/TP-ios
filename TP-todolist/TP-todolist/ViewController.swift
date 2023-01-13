//
//  ViewController.swift
//  TP-todolist
//
//  Created by Clement Ghys on 07/11/2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTask.count;
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell
        
        let row = indexPath.row

        cell.myName.text = myTask[row].taskName
      //  cell.myDesc.text = myTask[row].taskDescription
        cell.doneB.tag = row
        cell.deleteB.tag = row 
        return cell
    }
    
    var myTask: [Task] = []
    var listCategory: Category?
    @IBAction func doneButton(_ sender: UISwitch) {
       
        let row = sender.tag
        myTask[row].isDone = sender.isOn
        //print(sender.tag)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...6{
            let desc = "ceci est une description de la tache " + String(i)
            let name = "titre" + String(i)
            let dueDate = Date()
            let d =  Task(_name:name,_description: desc, _date: dueDate)
            myTask.append(d)
            
        }
        myTask = self.myTask.sorted(by:     {$0.dueDate  < $1.dueDate})
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
     
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as?DataViewController{
            let row = myTableView.indexPathForSelectedRow!.row
            vc.data = myTask[row]
        }
    }


    @IBOutlet weak var myTableView: UITableView!
  
 
   
    @IBAction func cancel(_ unwindSegue: UIStoryboardSegue) {
        if let vc = unwindSegue.source as? AddViewController {
            vc.dismiss(animated: true, completion: nil)
            
        }
    }
    @IBAction func save(_ unwindSegue: UIStoryboardSegue) {
        if let vc = unwindSegue.source as? AddViewController {
            if let newName = vc.addName, let newDesc = vc.addDesc, let newDueDate = vc.addDatePicker{
                if !newName.text!.isEmpty {
                    let newTask = Task(_name: newName.text!, _description: newDesc.text!, _date: newDueDate.date)
                    myTask.append(newTask)
                    self.myTableView.reloadData()
                    listCategory?.taskList.append(newTask)
                    myTask = self.myTask.sorted(by:     {$0.dueDate  < $1.dueDate})
                }
                
            }
        }
        
    }
    
   
    @IBAction func deleteButton(_ sender: UIButton) {
        let row = sender.tag
       myTask.remove(at: row)
       myTableView.reloadData()
        
    }
}

