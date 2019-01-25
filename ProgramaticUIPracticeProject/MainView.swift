//
//  MainView.swift
//  ProgramaticUIPracticeProject
//
//  Created by Pritesh Nadiadhara on 1/24/19.
//  Copyright © 2019 Pritesh Nadiadhara. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func segueActivated()
}

class MainView: UIView {
    
    weak var delegate: MainViewDelegate?

    lazy var entryFeild : UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        return textField
    }()
    
    lazy var submitTextButton : UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .gray
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(segueActivated), for: .touchUpInside)
        return button
    }()
    
    @objc func segueActivated() {
        delegate?.segueActivated()
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(entryFeild)
        addSubview(submitTextButton)
        setContraints()
        backgroundColor = .black
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setContraints() {
        entryFeild.translatesAutoresizingMaskIntoConstraints = false
        submitTextButton.translatesAutoresizingMaskIntoConstraints = false
        
        entryFeild.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        entryFeild.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
        entryFeild.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 44).isActive = true
        entryFeild.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -44).isActive = true
        
        
        submitTextButton.topAnchor.constraint(equalTo: entryFeild.bottomAnchor, constant: 66).isActive = true
        submitTextButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
