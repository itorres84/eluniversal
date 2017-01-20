//
//  Constants.swift
//  TabbarController
//
//  Created by Intercam on 27/08/15.
//  Copyright (c) 2015 intercam. All rights reserved.
//

import Foundation
import UIKit

let width = UIScreen.main.bounds.width
let height = UIScreen.main.bounds.height

let intercamColor = UIColor(red: 0.1, green: 0.3, blue: 0.4, alpha: 1.0)

let dataURL = URL(string: "")

let intercamFont = UIFont(name: "Helvetica", size: 22)
let pxaFont = "Helvetica"


let host = "http://10.9.1.118:8085/"
//let host = "http://www.interbanco.com.mx/"

let URLRESTINIT = host + "RESTiAutorizaWS-0.0.1-SNAPSHOT/"

let LOGINURL = URLRESTINIT + "rest/jsonServices/login"
let CUENTAURL = URLRESTINIT + "rest/jsonServices/cuenta"
let SALIDAURL = URLRESTINIT + "rest/jsonServices/salir"
let FINDOPEURL = URLRESTINIT + "rest/jsonServices/operaciones"
let AUTURL = URLRESTINIT + "rest/jsonServices/Autoriza"
let FINDDIRECCIONURL = URLRESTINIT + "rest/jsonServices/findDireccion"
let FINDBENEFICIARIOURL = URLRESTINIT + "rest/jsonServices/findBeneficiario"
let DDOBSURL = URLRESTINIT + "rest/jsonServices/agregaObservacion"
let FINDOBSURL = URLRESTINIT + "rest/jsonServices/findObservacion"
let CONCREURL = URLRESTINIT + "rest/jsonServices/consultaCreditos"
let FINDPXA = URLRESTINIT + "rest/jsonServices/findMontoPxA"
let SALDODEUDORURL = URLRESTINIT + "rest/jsonServices/findSaldoDeudor"
let AUTPXAURL = URLRESTINIT + "rest/jsonServices/findAutoPxA"
let ADDOBSPXAURL = URLRESTINIT + "rest/jsonServices/agregaObservacionPXA"
let FINFOBSPXAURL = URLRESTINIT + "rest/jsonServices/findObservacionPXA"

let FONTCOLORVI     = UIColor(red: 0.38, green: 0.55, blue: 0.18, alpha: 0.5)
let FONTCOLORDATOP  = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 0.3)
let FONTCOLORLITOP  = UIColor(red: 0, green: 0, blue: 0, alpha: 0.9)
let _AUTCOLOR       = UIColor(red: 0.13, green: 0.61, blue: 0.125, alpha: 1)
let _DEALINVALIDO   = "2"
let _DEALOPECAN     = "-1"
let _CELLHEIGHT : CGFloat = 200.0
let _SPEEDPROC  : CGFloat = 0.2


