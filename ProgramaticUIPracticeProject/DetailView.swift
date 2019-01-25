//
//  DetailView.swift
//  ProgramaticUIPracticeProject
//
//  Created by Pritesh Nadiadhara on 1/24/19.
//  Copyright © 2019 Pritesh Nadiadhara. All rights reserved.
//

import UIKit

class DetailView: UIView {

    lazy var displabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(displabel)
        backgroundColor = .red
        setConstraints()
    }
    
    func setConstraints() {
        displabel.translatesAutoresizingMaskIntoConstraints = false
        
        displabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        displabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


