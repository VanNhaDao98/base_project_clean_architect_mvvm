//
//  ViewController.swift
//  BaseProject
//
//  Created by Dao Van Nha on 17/04/2023.
//

import UIKit

class ViewController: UIViewController, MVVMViewController {
    var viewModel: TestViewModel
    
    
    typealias VM = TestViewModel

    init(viewModel: TestViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }

    func setupViews() {
        view.backgroundColor = .red
    }
    
    func bind(viewModel: TestViewModel) {
        viewModel.config(output: .init(load: {
            print("load")
        }))
        viewModel.send(.viewDidLoad)
    }

}

