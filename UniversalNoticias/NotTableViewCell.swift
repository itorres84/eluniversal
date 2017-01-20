//
//  NotTableViewCell.swift
//  UniversalNoticias
//
//  Created by Intercam on 19/01/17.
//  Copyright © 2017 Universal. All rights reserved.
//

import UIKit

class NotTableViewCell: UITableViewCell {

    
    var imgNot : UIImageView!
    var lblPais : UILabel!
    var lblFecha : UILabel!
    var lblAutor : UILabel!
    var lblseccion: UILabel!
    var lblSubtitulo: UILabel!
    var imgFace: UIImageView!
    var imgwats: UIImageView!
    var imgtwit: UIImageView!
    var imgcompartir: UIImageView!
    var base: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor(red: 0.18, green: 0.18, blue: 0.18, alpha: 0.0)
        
        base = UIImageView(frame: CGRect(x: width*0.015, y: _CELLHEIGHT*0.03, width: width*0.97, height: _CELLHEIGHT*0.96))
        base.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.8)
        base.layer.cornerRadius = 8.0
        self.addSubview(base)
        
        imgNot = UIImageView(frame: CGRect(x: width*0.05, y: _CELLHEIGHT*0.10, width: width*0.40, height: _CELLHEIGHT*0.60))
        imgNot.backgroundColor = UIColor.black
        imgNot.layer.cornerRadius = 8.0
        self.addSubview(imgNot)
        
        lblPais = UILabel(frame: CGRect(x: width*0.05, y: _CELLHEIGHT*0.70, width: width*0.80, height: _CELLHEIGHT*0.10))
        lblPais.font = UIFont(name: pxaFont, size: 15)
        lblPais.textColor = UIColor(red: 0/255, green: 182/255, blue: 252/255, alpha: 1)
        lblPais.textAlignment = NSTextAlignment.justified
        lblPais.numberOfLines = 0
        self.addSubview(lblPais)
        
        lblFecha = UILabel(frame: CGRect(x: width*0.05, y: _CELLHEIGHT*0.77, width: width*0.80, height: _CELLHEIGHT*0.06))
        lblFecha.font = UIFont(name: pxaFont, size: 9)
        lblFecha.textColor = UIColor(red: 80/255, green: 93/255, blue: 107/255, alpha: 2)
        lblFecha.textAlignment = NSTextAlignment.justified
        lblFecha.numberOfLines = 0
        self.addSubview(lblFecha)
        
        lblSubtitulo = UILabel(frame: CGRect(x: width*0.05, y: _CELLHEIGHT*0.85, width: width*0.80, height: _CELLHEIGHT*0.06))
        lblSubtitulo.font = UIFont(name: pxaFont, size: 14)
        lblSubtitulo.textColor = UIColor(red: 8/255, green: 9/255, blue: 10/255, alpha: 2)
        lblSubtitulo.textAlignment = NSTextAlignment.justified
        lblSubtitulo.numberOfLines = 0
        self.addSubview(lblSubtitulo)
        
        lblseccion = UILabel(frame: CGRect(x: width*0.50, y: _CELLHEIGHT*0.10, width: width*0.40, height: _CELLHEIGHT*0.10))
        lblseccion.font = UIFont(name: pxaFont, size: 12)
        lblseccion.textColor = UIColor(red: 0/255, green: 182/255, blue: 252/255, alpha: 1)
        lblseccion.textAlignment = NSTextAlignment.justified
        lblseccion.numberOfLines = 0
        lblseccion.layer.shadowColor = UIColor(red: 0/255, green: 182/255, blue: 252/255, alpha: 1).cgColor
        
        let rect:CGRect = lblseccion.frame
        let linePath:UIBezierPath = UIBezierPath()
        linePath.move(to: CGPoint(x: 0, y: rect.size.height))
        linePath.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height))
        let lineLayer: CAShapeLayer = CAShapeLayer()
        lineLayer.lineWidth = 2.0
        lineLayer.strokeColor = UIColor(red: 0/255, green: 182/255, blue: 252/255, alpha: 1).cgColor
        lineLayer.fillColor = nil
        lineLayer.path = linePath.cgPath
        
        lblseccion.layer.addSublayer(lineLayer)
        
        self.addSubview(lblseccion)
        
        lblAutor = UILabel(frame: CGRect(x: width*0.50, y: _CELLHEIGHT*0.20, width: width*0.20, height: _CELLHEIGHT*0.10))
        lblAutor.font = UIFont(name: pxaFont, size: 10)
        lblAutor.textColor = UIColor(red: 80/255, green: 93/255, blue: 107/255, alpha: 2)
        lblAutor.textAlignment = NSTextAlignment.justified
        lblAutor.numberOfLines = 0
        self.addSubview(lblAutor)
        
        imgFace = UIImageView(frame: CGRect(x: width*0.50, y: _CELLHEIGHT*0.50, width: width*0.35, height: _CELLHEIGHT*0.12))
        //imgFace.backgroundColor = UIColor.black
        imgFace.layer.cornerRadius = 8.0
        self.addSubview(imgFace)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
