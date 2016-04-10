//
//  Post.swift
//  my-hood-luxio
//
//  Created by Stéphane Lux on 05.04.16.
//  Copyright © 2016 LUXio IT-Solutions. All rights reserved.
//

import Foundation


class Post: NSObject, NSCoding {
    private var _imagePath: String!
    private var _title: String!
    private var _postDesc: String!
    
    init(imagePath: String, title: String, description: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
    }

    var imagePath: String {
        return  _imagePath
    }
    
    var title: String {
        return _title
    }
        
    var postDesc: String {
        return _postDesc
    }
    
    override init() {
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._title =  aDecoder.decodeObjectForKey("title") as? String
        self._postDesc =  aDecoder.decodeObjectForKey("postDesc") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._postDesc, forKey: "postDesc")
    }
}