//
//  DetailViewController.swift
//  ProgramaticUIPracticeProject
//
//  Created by Pritesh Nadiadhara on 1/24/19.
//  Copyright © 2019 Pritesh Nadiadhara. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    let detailView = DetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(detailView)
        
    }
    
    init (textStringToPass: String){
        super.init(nibName: nil, bundle: nil)
        detailView.displabel.text = textStringToPass
    }
    
        required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

   

}
