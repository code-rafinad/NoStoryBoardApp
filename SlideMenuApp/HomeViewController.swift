//
//  HomeViewController.swift
//  SlideMenuApp
//
//  Created by Сахар Кубический on 04.05.2021.
//

import UIKit


protocol HomeViewControllerDelegate: AnyObject {
    func didTapButtonMenu()
}

class HomeViewController: UIViewController {
    
    weak var delegate: HomeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "leaf.fill"), style: .done, target: self, action: #selector(barButtonTapped))
        navigationItem.leftBarButtonItem?.tintColor = .darkGray
    }

    @objc func barButtonTapped() {
        delegate?.didTapButtonMenu()
        print("tap on home screen")
    }
}
