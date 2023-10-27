//
//  SecondPersonsListViewController.swift
//  PersonsList
//
//  Created by Елизавета Шалдыбина on 25.10.2023.
//

import UIKit

final class SecondPersonsListViewController: UITableViewController {
    
    var person: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension SecondPersonsListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsListSecondCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row < person.count {
            let person = person[indexPath.row]
            
            if indexPath.row == 0 {
                content.text = person.phone
            } else if indexPath.row == 1 {
                content.text = person.email
            } else {
                
            }
        }
        
        cell.contentConfiguration = content

        return cell
    }
}
