//
//  ViewController.swift
//  UalaLoadingView
//
//  Created by uala on 01/07/21.
//

import UIKit

class ViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func handleLoadingView() {
        DispatchQueue.main.async {
            self.showLoadingView()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.hideLoadingView()
        }
    }
    
    @IBAction func showLoading(_ sender: Any) {
        handleLoadingView()
    }
    
    @IBAction func showSecondView(_ sender: Any) {
        let secondView = SecondViewController()
        navigationController?.pushViewController(secondView, animated: true)
    }

    @IBAction func showThirdView(_ sender: Any) {
        let view = LoadingViewController()
        view.modalPresentationStyle = .overCurrentContext
        view.modalTransitionStyle = .crossDissolve
        
        let thirdView = ThirdViewController(loadingView: view)
        navigationController?.pushViewController(thirdView, animated: true)
    }
}

