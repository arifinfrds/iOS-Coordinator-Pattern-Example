//
//  MainCoordinator.swift
//  CoordinatorPatternTest
//
//  Created by Arifin Firdaus on 11/16/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = MainVC.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func addNote() {
        let vc = AddNoteVC.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func noteDetail() {
        let vc = NoteDetailVC.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
