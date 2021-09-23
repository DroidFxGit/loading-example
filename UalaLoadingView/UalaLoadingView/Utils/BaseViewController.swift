//
//  BaseViewController.swift
//  UalaLoadingView
//
//  Created by uala on 01/07/21.
//

import UIKit

class BaseViewController: UIViewController {
    var loadingView: LoadingViewController = {
        let view = LoadingViewController()
        view.modalPresentationStyle = .overCurrentContext
        view.modalTransitionStyle = .crossDissolve
        return view
    }()
    
    func showLoadingView() {
        present(loadingView, animated: true)
    }
    
    func hideLoadingView() {
        loadingView.dismiss(animated: true)
    }
    
    func showAlert() {
        
    }
}
