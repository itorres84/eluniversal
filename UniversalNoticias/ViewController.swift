//
//  ViewController.swift
//  UniversalNoticias
//
//  Created by Israel Torres Alvarado on 19/01/17.
//  Copyright © 2017 Universal. All rights reserved.
//

import UIKit
import Alamofire
import MBProgressHUD

class ViewController: UIViewController {
    
    var contentView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView = UIView(frame: CGRect(x: 0 , y: 0, width: width, height: height))
        self.view.addSubview(contentView)
        
        self.view.backgroundColor = UIColor.white
     
        showLoadingHUD()
        
        Alamofire.request("http://api.eluniversal.com.mx/v1/notes/eluniversal/mxm/json/espectaculos/0/10").responseJSON { response in
       
            switch(response.result) {
            case .success(_):
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    self.hideLoadingHUD()
                }
                
            case .failure(_):
                print(response.result.error)
            }
            
        }
        
    }
    
    // MARK: MBProgressHUD
    
    private func showLoadingHUD() {
        let hud = MBProgressHUD.showAdded(to: contentView, animated: true)
        hud?.labelText = "Cargando..."
    }
    
    private func hideLoadingHUD() {
        MBProgressHUD.hideAllHUDs(for: contentView, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

