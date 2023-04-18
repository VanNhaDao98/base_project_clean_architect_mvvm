//
//  BaseViewModel.swift
//  BaseProject
//
//  Created by Dao Van Nha on 18/04/2023.
//

import Foundation
import UIKit

public protocol ViewModel {
    associatedtype Input
    associatedtype Output
    
    var output: Output { get }
    func send(_ input: Input)
    
}

public class BaseViewModel<Input, OutPut>: ViewModel where OutPut: OutPutVM {
    
    private var _output: OutPut!
    
    public var output: OutPut {
        _output
    }
    
    public init() {}
    
    public func send(_ input: Input) {
        handle(input: input)
    }
    
    public func handle(input: Input) {}
    
    public func config(output: OutPut) {
        self._output = output
    }
    
    
}

public protocol OutPutVM {
    func showLoading()
    func hideLoading()
    func showError(_ error: String?)
    func showSuccess(_ success: String)
}

extension OutPutVM {
    func showLoading() {}
    
    func hideLoading() {}
    
    func showError(_ error: String?) {}
    
    func showSuccess(_ success: String) {}
}

public protocol MVVMViewControllerConfigguration {
    func configView()
}

public protocol MVVMViewController: UIViewController, MVVMViewControllerConfigguration {
    associatedtype VM: ViewModel
    var viewModel: VM { get }
    func setupViews()
    func bind(viewModel: VM)
}

extension MVVMViewController {
    public func configView() {
        setupViews()
        bind(viewModel: viewModel)
    }
}

