//
//  PersonsInformationViewController.swift
//  PersonsList
//
//  Created by Елизавета Шалдыбина on 24.10.2023.
//

import UIKit

final class PersonsInformationViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(person.name) \(person.surname)"
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
