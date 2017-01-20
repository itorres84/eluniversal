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
import SwiftyJSON

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var contentView: UIView = UIView()
    var arrayNot: [Noticias] = [Noticias]()
    var tableNot: UITableView!
    var LoadingV: LoadingView = LoadingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
     
        tableNot = UITableView(frame: CGRect(x: width*0, y: height*0, width: width, height: height))
        tableNot.delegate = self
        tableNot.dataSource = self
        
        tableNot.backgroundView = UIImageView(image: UIImage(named: "fondo.png"))
        self.tableNot.register(NotTableViewCell.self, forCellReuseIdentifier: "cell")
        tableNot.separatorStyle = .none
        view.addSubview(tableNot)
        
        self.view.addSubview(LoadingV)
        
        Alamofire.request("http://api.eluniversal.com.mx/v1/notes/eluniversal/mxm/json/espectaculos/0/10").responseJSON { response in
       
            switch(response.result) {
            case .success(_):
                
                self.arrayNot.removeAll()
                if let noticias = response.result.value {
                    
                    let json = JSON(noticias)
                
                    for i in 0 ..< json.count  {
                    
                        
            
                        let not: Noticias = Noticias()
                        
                        not.main_section = json[i]["main_section"].string
                        not.place = json[i]["place"].string
                        not.thumbnail = json[i]["thumbnail"].string
                        not.rank = json[i]["rank"].string
                        not.title = json[i]["title"].string
                        not.link = json[i]["link"].string
                        not.summary = json[i]["summary"].string
                        not.image = json[i]["image"].string
                        not.link_title = json[i]["link_title"].string
                        not.image_small_size = json[i]["image_small_size"].string
                        not.pubtime = json[i]["pubtime"].string
                        not.video = json[i]["video"].string
                        not.premium = json[i]["premium"].string
                        not.pubdate = json[i]["pubdate"].string
                        not.body = json[i]["body"].string
                        not.id = json[i]["id"].string
                        not.caption = json[i]["caption"].string
                        not.subtitle = json[i]["subtitle"].string
                        not.timestamp = json[i]["timestamp"].string
                        not.audio = json[i]["audio"].string
                        not.comments = json[i]["comments"].string
                        not.gallery = json[i]["gallery"].string
                        not.section = json[i]["section"].string
                        not.author = json[i]["author"].string
                        
                        
                        self.arrayNot.append(not)
                    
                    }
                    
                    self.tableNot.reloadData()
                    self.LoadingV.removeFromSuperview()
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
    
    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNot.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NotTableViewCell
    
        cell.selectionStyle = .none
        
        var noticia : Noticias = Noticias()
        noticia = arrayNot[indexPath.row] as Noticias
        cell.imgNot.setImageFromURl(stringImageUrl: noticia.image_small_size)
        cell.lblPais.text = noticia.place
        cell.lblFecha.text = noticia.pubdate
        cell.lblSubtitulo.text = noticia.title
        cell.lblseccion.text = noticia.main_section
        cell.lblAutor.text = noticia.section
        cell.imgFace.image = UIImage(named: "redes.png")
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return _CELLHEIGHT
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
extension UIImageView{
    
    func setImageFromURl(stringImageUrl url: String){
        
        if let url = NSURL(string: url) {
            if let data = NSData(contentsOf: url as URL) {
                self.image = UIImage(data: data as Data)
            }
        }
    }
}

