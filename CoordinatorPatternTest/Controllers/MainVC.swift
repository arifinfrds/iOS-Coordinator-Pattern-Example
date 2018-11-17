//
//  ViewController.swift
//  CoordinatorPatternTest
//
//  Created by Arifin Firdaus on 11/16/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class MainVC: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    @IBOutlet private var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }
    
    private func setupNavBar() {
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                            target: self,
                                            action: #selector(didTapAddNoteBarButtonItem))
        self.navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc private func didTapAddNoteBarButtonItem() {
        coordinator?.addNote()
    }
    
}


// MARK: - UITableViewDataSource

extension MainVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}

// MARK: - UITableViewDelegate

extension MainVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.noteDetail()
    }
    
}

