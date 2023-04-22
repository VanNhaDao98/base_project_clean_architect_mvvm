//
//  ViewController.swift
//  BaseProject
//
//  Created by Dao Van Nha on 17/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func didTapAction(_ sender: Any) {
        let vc = ComponentsDemoViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

