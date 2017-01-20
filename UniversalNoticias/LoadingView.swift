//
//  LoadingView.swift
//  AutorizaDivisas
//
//  Created by Intercam on 28/08/15.
//  Copyright (c) 2015 mx.com.intercam. All rights reserved.
//

import UIKit

class LoadingView: UIView {

    
    var loadingIndicator: UIActivityIndicatorView!
    var loadView: UIView!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initLayerFrames()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initLayerFrames()

    }
    
    func initLayerFrames() {
        
        self.frame = CGRect(x: 0 , y: 0, width: width, height: height)
        self.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        
        loadView = UIView(frame: CGRect(x: 0 , y: 0, width: 130, height: 130))
        loadView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        loadView.center = self.center
        loadView.layer.cornerRadius = 20.0
        addSubview(loadView)
        
        loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 0 , y: 0, width: 100, height: 100))
        loadingIndicator.center = self.center;
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
        loadingIndicator.startAnimating();
        
        addSubview(loadingIndicator)

    }

}
