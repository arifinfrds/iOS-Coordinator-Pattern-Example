//
//  Coordinator.swift
//  CoordinatorPatternTest
//
//  Created by Arifin Firdaus on 11/16/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
