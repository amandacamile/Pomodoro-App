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
        circle.backgroundColor = .colorDefault
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
    
    let buttonsStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 15
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let shortBreakButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("short break", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(didTapShortBreakButton), for: .touchUpInside)
        return button
    }()
    
    let pomodoroButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("pomodoro", for: .normal)
        button.setTitleColor(.colorDefault, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(didTapPomodoroButton), for: .touchUpInside)
        return button
    }()
    
    let longBreakButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("long break", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(didTapLongBreakButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(circleView)
        addSubview(buttonsStackView)
        
        buttonsStackView.addArrangedSubview(shortBreakButton)
        buttonsStackView.addArrangedSubview(pomodoroButton)
        buttonsStackView.addArrangedSubview(longBreakButton)
        
        circleView.addSubview(timerLabel)
        
        NSLayoutConstraint.activate([
            circleView.centerXAnchor.constraint(equalTo: centerXAnchor),
            circleView.centerYAnchor.constraint(equalTo: centerYAnchor),
            circleView.widthAnchor.constraint(equalToConstant: 250),
            circleView.heightAnchor.constraint(equalToConstant: 250),
            
            timerLabel.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
            timerLabel.centerYAnchor.constraint(equalTo: circleView.centerYAnchor),
            
            buttonsStackView.topAnchor.constraint(equalTo: circleView.bottomAnchor, constant: 20),
            buttonsStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension Home {
    @objc func didTapShortBreakButton() {
        shortBreakButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        pomodoroButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        longBreakButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        
        shortBreakButton.setTitleColor(.colorDefault, for: .normal)
        pomodoroButton.setTitleColor(.lightGray, for: .normal)
        longBreakButton.setTitleColor(.lightGray, for: .normal)
    }
    
    @objc func didTapPomodoroButton() {
        shortBreakButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        pomodoroButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        longBreakButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        
        shortBreakButton.setTitleColor(.lightGray, for: .normal)
        pomodoroButton.setTitleColor(.colorDefault, for: .normal)
        longBreakButton.setTitleColor(.lightGray, for: .normal)
    }
    
    @objc func didTapLongBreakButton() {
        shortBreakButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        pomodoroButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        longBreakButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        shortBreakButton.setTitleColor(.lightGray, for: .normal)
        pomodoroButton.setTitleColor(.lightGray, for: .normal)
        longBreakButton.setTitleColor(.colorDefault, for: .normal)
    }
}
