//
//  Tweet.swift
//  FavLister
//
//  Created by 田中賢治 on 2016/02/09.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import SwiftyJSON

struct Tweet {
    var id = ""
    var text = ""
    var user = User()
    
    init(json: JSON, user: User) {
        self.id = json["id_str"].stringValue
        self.text = json["text"].stringValue
        self.user = user
    }
}
