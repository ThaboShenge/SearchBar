//
//  ViewController.swift
//  Mseshi
//
//  Created by DA MAC M1 146 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }


}
//MARK - Table view methods
extension ViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
        else {return UITableViewCell()}
        
        cell.firstName.text = "Rholivhuwa"
        cell.lastName.text = "Saile"
        cell.email.text = "Shally@saile.com"
        cell.imageLabel.image = UIImage(systemName: "person.crop.circle")
        
        return cell
    }
}
