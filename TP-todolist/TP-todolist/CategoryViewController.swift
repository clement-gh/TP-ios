//
//  CategoryViewController.swift
//  TP-todolist
//
//  Created by Clément GHYS on 12/01/2023.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listCategory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)as! TableViewCell
        cell.myName.text = self.listCategory[indexPath.row].nom
        return cell
        
    }
    

    @IBOutlet weak var tableViewCategory: UITableView!
    
    var listCategory: [Category]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.listCategory.append(Category(_nom:"Work"))
        self.listCategory.append(Category(_nom:"Home"))
        
        self.tableViewCategory.delegate = self
        self.tableViewCategory.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewController{
            let row = tableViewCategory.indexPathForSelectedRow!.row
            vc.listCategory = self.listCategory[row]
            vc.myTask = self.listCategory[row].taskList
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
