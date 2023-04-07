//
//  Home.swift
//  Pomodoro-App
//
//  Created by Amanda Silva on 04/04/23.
//

import UIKit

class Home: UIView {
    let circleView: UIView = {
       let circle = UIView()
        circle.backgroundColor = UIColor(red: 0xFE/255, green: 0x07/255, blue: 0xFE/255, alpha: 1)
        circle.layer.cornerRadius = 125
        circle.layer.shadowColor = UIColor.black.cgColor
        circle.layer.shadowOpacity = 0.4
        circle.layer.shadowOffset = CGSize(width: 0, height: 0)
        circle.layer.shadowRadius = 7
        circle.translatesAutoresizingMaskIntoConstraints = false
        return circle
    }()

    let timerLabel: UILabel = {
        let timer = UILabel()
        timer.translatesAutoresizingMaskIntoConstraints = false
        timer.text = "20:00"
        timer.font = UIFont.systemFont(ofSize: 50)
        timer.textColor = .white
        return timer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(circleView)
        circleView.addSubview(timerLabel)
        
        NSLayoutConstraint.activate([
            circleView.centerXAnchor.constraint(equalTo: centerXAnchor),
            circleView.centerYAnchor.constraint(equalTo: centerYAnchor),
            circleView.widthAnchor.constraint(equalToConstant: 250),
            circleView.heightAnchor.constraint(equalToConstant: 250),
            
            timerLabel.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
            timerLabel.centerYAnchor.constraint(equalTo: circleView.centerYAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
