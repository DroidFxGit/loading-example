//
//  SecondViewController.swift
//  UalaLoadingView
//
//  Created by uala on 01/07/21.
//

import UIKit

class SecondViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        showLoadingView()
        MockedService.callFakeService { [weak self] in
            self?.hideLoadingView()
        }
    }
}
