//
//  Button.swift
//  BaseProject
//
//  Created by Dao Van Nha on 21/04/2023.
//

import Foundation
import UIKit

public class AppBaseButton: UIButton {
    
    public var action: (() -> Void)? {
        didSet {
            self.removeTarget(self, action: nil, for: .touchUpInside)
            self.addTarget(self, action: #selector(handleAction), for: .touchUpInside)
        }
    }
    
    @objc private func handleAction() {
        action?()
    }
}
