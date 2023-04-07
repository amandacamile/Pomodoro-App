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
        
        let Home = Home(frame: view.frame)
        
        view.insertSubview(Home, at: 0)
    }

}
