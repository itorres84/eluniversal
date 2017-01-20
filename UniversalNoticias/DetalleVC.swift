//
//  DetalleVC.swift
//  UniversalNoticias
//
//  Created by Intercam on 20/01/17.
//  Copyright © 2017 Universal. All rights reserved.
//

import UIKit

class DetalleVC: UIViewController {

    var noticia: Noticias = Noticias()
    var viewFondo: UIView!
    var btnBack: UIBarButtonItem!
    
    var lblTitulo: UILabel!
    var lblEncabe: UILabel!
    var lblBody: UILabel!
    var imgNot: UIImageView!
    var imgFace: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fondo.png")!)
        
        viewFondo = UIView(frame: CGRect(x: width*0.026, y: height*0.10, width: width*0.95, height: height*0.89))
        viewFondo.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        viewFondo.layer.cornerRadius = 8.0
        viewFondo.layer.shadowOpacity = 0.5
        viewFondo.alpha = 0.8;
        viewFondo.layer.shadowOffset = CGSize(width: -5, height: 5)
        viewFondo.layer.shadowColor  = UIColor.black.cgColor
        self.view.addSubview(viewFondo)
        
        let btnName = UIButton()
        btnName.setImage(UIImage(named: "circled_left_2_filled-50.png"), for: .normal)
        btnName.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btnName.addTarget(self, action: #selector(DetalleVC.Regresar(_:)), for: .touchUpInside)
        
        btnBack = UIBarButtonItem()
        btnBack.customView = btnName
        self.navigationItem.leftBarButtonItem = btnBack
        
        
        lblTitulo = UILabel(frame: CGRect(x: width*0.05, y: height*0.10, width: width*0.90, height: height*0.08))
        lblTitulo.font = UIFont(name: pxaFont, size: 15)
        lblTitulo.textColor = UIColor(red: 0/255, green: 182/255, blue: 252/255, alpha: 1)
        lblTitulo.textAlignment = NSTextAlignment.justified
        lblTitulo.numberOfLines = 0
        lblTitulo.text = noticia.place + "-" + noticia.main_section + "-" + noticia.section
        view.addSubview(lblTitulo)
        
        let rect:CGRect = lblTitulo.frame
        let linePath:UIBezierPath = UIBezierPath()
        linePath.move(to: CGPoint(x: 0, y: rect.size.height))
        linePath.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height))
        let lineLayer: CAShapeLayer = CAShapeLayer()
        lineLayer.lineWidth = 2.0
        lineLayer.strokeColor = UIColor(red: 0/255, green: 182/255, blue: 252/255, alpha: 1).cgColor
        lineLayer.fillColor = nil
        lineLayer.path = linePath.cgPath
        
        lblTitulo.layer.addSublayer(lineLayer)

        lblEncabe = UILabel(frame: CGRect(x: width*0.05, y: height*0.15, width: width*0.90, height: height*0.15))
        lblEncabe.font = UIFont(name: pxaFont, size: 20)
        lblEncabe.textColor = UIColor(red: 8/255, green: 9/255, blue: 10/255, alpha: 2)
        lblEncabe.textAlignment = NSTextAlignment.justified
        lblEncabe.numberOfLines = 0
        lblEncabe.text = noticia.title
        view.addSubview(lblEncabe)
        
        lblBody = UILabel(frame: CGRect(x: width*0.05, y: height*0.25, width: width*0.90, height: height*0.40))
        lblBody.font = UIFont(name: pxaFont, size: 9)
        lblBody.textColor = UIColor(red: 80/255, green: 93/255, blue: 107/255, alpha: 2)
        lblBody.textAlignment = NSTextAlignment.justified
        lblBody.numberOfLines = 0
        lblBody.text = noticia.body
        view.addSubview(lblBody)
        
        imgNot = UIImageView(frame: CGRect(x: width*0.026, y: height*0.65, width: width*0.95, height: height*0.28))
        imgNot.backgroundColor = UIColor.black
        imgNot.setImageFromURl(stringImageUrl: noticia.image)
        view.addSubview(imgNot)
        
        imgFace = UIImageView(frame: CGRect(x: width*0.30, y: height*0.90, width: width*0.40, height: height*0.05))
        //imgFace.backgroundColor = UIColor.black
        imgFace.layer.cornerRadius = 8.0
        view.addSubview(imgFace)
        imgFace.image = UIImage(named: "redes.png")
        
        
    }

    func Regresar(_ btnBack: UIBarButtonItem){
        
        //if(enAutorizacion != true){
        self.navigationController!.popViewController(animated: true)
        //}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
