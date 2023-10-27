//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Елизавета Шалдыбина on 24.10.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    var person: [Person] = []
    
    private var personsList = Person.getPersonsList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 40
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let informationVC = segue.destination as? PersonsInformationViewController else { return }
        informationVC.person = personsList[indexPath.row]
        //guard let contactsVC = segue.destination as? SecondPersonsListViewController else { return }
        //contactsVC.person = personsList[indexPath.row]
    }
}

extension PersonsListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsListCell", for: indexPath)

        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.surname)"
        
        cell.contentConfiguration = content

        return cell
    }
}
