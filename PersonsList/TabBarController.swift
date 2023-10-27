//
//  TabBarController.swift
//  PersonsList
//
//  Created by Елизавета Шалдыбина on 25.10.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    var person = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        
        transferData()
    }
    
    private func transferData() {
        guard let viewcontrollers = viewControllers else { return }
        
        viewcontrollers.forEach {
            if let personsListVC = $0 as? PersonsListViewController {
                personsListVC.person = person
            } else if let secondPersonsListVC = $0 as? SecondPersonsListViewController {
                secondPersonsListVC.person = person
            }
        }
    }
}
