//
//  Header.swift
//  Pomodoro-App
//
//  Created by Amanda Silva on 08/04/23.
//

import UIKit

class Header: UIView {
    
    let headerLabel: UILabel = {
       let label = UILabel()
        label.text = "POMODORO"
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = .colorDefault
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let buttonReset: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "reload_icon")?.withTintColor(.colorDefault), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(headerLabel)
        self.addSubview(buttonReset)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            headerLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            
            buttonReset.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            buttonReset.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            buttonReset.widthAnchor.constraint(equalToConstant: 30),
            buttonReset.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension Header {
    @objc func resetButtonTapped() {
        addAnimateButton()
        print("clicou")
    }
    
    func addAnimateButton() {
        print("animacao")
        
        UIView.animate(withDuration: 0.5, animations: {
            self.buttonReset.transform = CGAffineTransform(rotationAngle: .pi)
        }) { (_) in
            print("acabou")
            self.buttonReset.transform = .identity
        }
    }
}
