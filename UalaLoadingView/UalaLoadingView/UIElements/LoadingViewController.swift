//
//  LoadingViewController.swift
//  UalaLoadingView
//
//  Created by uala on 01/07/21.
//

import UIKit

public class LoadingViewController: UIViewController {
    var loadingActivityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView()
        indicator.style = .large
        indicator.color = .white
        indicator.startAnimating()
        
        indicator.autoresizingMask = [
            .flexibleLeftMargin, .flexibleRightMargin,
            .flexibleTopMargin, .flexibleBottomMargin
        ]
        
        return indicator
    }()
    
    var blurEffectView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.alpha = 0.8
        blurEffectView.autoresizingMask = [
            .flexibleWidth, .flexibleHeight
        ]
        return blurEffectView
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        view.insertSubview(blurEffectView, at: 0)
        
        view.addSubview(loadingActivityIndicator)
        loadingActivityIndicator.center = CGPoint(x: view.bounds.midX,
                                                  y: view.bounds.midY)
    }
}
