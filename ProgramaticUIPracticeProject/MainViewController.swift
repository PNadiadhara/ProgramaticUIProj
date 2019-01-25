//
//  ViewController.swift
//  ProgramaticUIPracticeProject
//
//  Created by Pritesh Nadiadhara on 1/24/19.
//  Copyright © 2019 Pritesh Nadiadhara. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let mainView = MainView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(mainView)
        mainView.delegate = self
        
    
    }


}

extension MainViewController : MainViewDelegate  {
    func segueActivated() {
        let textFieldTextToPass = DetailViewController.init(textStringToPass: mainView.entryFeild.text ?? "Nothing was typed")
        navigationController?.pushViewController(textFieldTextToPass, animated: true)
        
    }
}

