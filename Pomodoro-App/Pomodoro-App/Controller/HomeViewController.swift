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
        
    }


}
