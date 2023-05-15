//
//  HomeViewController.swift
//  Pomodoro-App
//
//  Created by Amanda Silva on 07/04/23.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let home = Home(frame: view.frame)
        let header = Header(frame: view.frame)
        
        view.insertSubview(header, at: 1)
        view.insertSubview(home, at: 0)
        
        header.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            header.heightAnchor.constraint(equalToConstant: 100),
            header.widthAnchor.constraint(equalTo: view.widthAnchor),
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
        ])
    }
}
