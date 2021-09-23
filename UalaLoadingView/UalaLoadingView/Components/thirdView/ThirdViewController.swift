//
//  ThirdViewController.swift
//  UalaLoadingView
//
//  Created by uala on 01/07/21.
//

import UIKit

class ThirdViewController: UIViewController {
    internal var loadingView: LoadingViewController
    
    init(loadingView: LoadingViewController) {
        self.loadingView = loadingView
        super.init(nibName: "ThirdViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showLoadingView()
        MockedService.callFakeService { [weak self] in
            self?.hideLoadingView()
        }
    }
}

extension ThirdViewController: BaseView { }
