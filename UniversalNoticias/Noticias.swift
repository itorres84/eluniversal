//
//  Noticias.swift
//  UniversalNoticias
//
//  Created by Intercam on 19/01/17.
//  Copyright © 2017 Universal. All rights reserved.
//

import UIKit
import SwiftyJSON

class Noticias: NSObject {
    
    var main_section : String!
    var place : String!
    var thumbnail : String!
    var rank : String!
    var title : String!
    var link : String!
    var summary : String!
    var image : String!
    var link_title : String!
    var image_small_size : String!
    var pubtime : String!
    var video : String!
    var premium : String!
    var pubdate : String!
    var body : String!
    var id : String!
    var caption : String!
    var subtitle : String!
    var timestamp : String!
    var audio : String!
    var comments : String!
    var gallery : String!
    var section : String!
    var author : String!
    
    override init() {
        super.init()
    }
    
    init(json: JSON){
        super.init()
        
        self.main_section = json["main_section"].string
        self.place = json["place"].string
        self.thumbnail = json["thumbnail"].string
        self.rank = json["rank"].string
        self.title = json["title"].string
        self.link = json["link"].string
        self.summary = json["summary"].string
        self.image = json["image"].string
        self.link_title = json["link_title"].string
        self.image_small_size = json["image_small_size"].string
        self.pubtime = json["pubtime"].string
        self.video = json["video"].string
        self.premium = json["premium"].string
        self.pubdate = json["pubdate"].string
        self.body = json["body"].string
        self.id = json["id"].string
        self.caption = json["caption"].string
        self.subtitle = json["subtitle"].string
        self.timestamp = json["timestamp"].string
        self.audio = json["audio"].string
        self.comments = json["comments"].string
        self.gallery = json["gallery"].string
        self.section = json["section"].string
        self.author = json["author"].string
        
    }
    
}
