//
//  ViewController.swift
//  Study_MVC
//
//  Created by Bard on 2022/01/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView : UITableView!
    private let xibName = "TableViewCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.settingNib()
        
    }
    
    let users : [User] = [
    User(name: "bard", age: 27, job: "dev"),
    User(name: "test", age: 30, job: "teacher"),
    User(name: "kihoon", age: 26, job: "student"),
    User(name: "plgrim", age: 8, job: "company")
    ]
    
    private func settingNib(){
        let uiXib = UINib(nibName: xibName , bundle: nil)
        self.tableView.register(uiXib, forCellReuseIdentifier: "testCell")
    }
}

extension ViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as? TableViewCell else { return UITableViewCell() }
        cell.nameLB.text = users[indexPath.row].name
        cell.ageLB.text = String(users[indexPath.row].age)
        cell.jobLB.text = users[indexPath.row].job
        return cell
    }
    
    
}
