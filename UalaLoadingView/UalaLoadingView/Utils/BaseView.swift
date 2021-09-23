//
//  BaseView.swift
//  UalaLoadingView
//
//  Created by uala on 01/07/21.
//

import Foundation
import UIKit

public protocol BaseView {
    var loadingView: LoadingViewController { get }
}

extension BaseView where Self: UIViewController {
    func showLoadingView(_ completion: (() -> Void)? = nil) {
        present(loadingView, animated: true, completion: completion)
    }
    
    func hideLoadingView(_ completion: (() -> Void)? = nil) {
        dismiss(animated: true, completion: completion)
    }
}


