//
//  ViewController.swift
//  SeniorProject
//
//  Created by Carolyn Beranek on 9/13/17.
//  Copyright © 2017 Carolyn Beranek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pastEntriesList: UITableView!
    var entries: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pastEntriesList.register(UITableViewCell.self,
                           forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            
            let cell =
                tableView.dequeueReusableCell(withIdentifier: "Cell",
                                              for: indexPath)
            cell.textLabel?.text = entries[indexPath.row]
            return cell
    }
}

