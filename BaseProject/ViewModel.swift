//
//  ViewModel.swift
//  BaseProject
//
//  Created by Dao Van Nha on 18/04/2023.
//

import Foundation
class TestViewModel: BaseViewModel<TestViewModel.Input, TestViewModel.Output> {
    enum Input {
        case viewDidLoad
    }
    
    struct Output: OutPutVM {
        var load: () -> Void
    }
    
    
    override func handle(input: Input) {
        switch input {
        case .viewDidLoad:
            output.load()
        }
    }
}
