//
//  Album.swift
//  playlist
//
//  Created by Popsical on 22/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import Foundation

public struct AlbumKeys {
    static let title = "title"
    static let description = "description"
    static let coverImageName = "coverImageName"
    static let songs = "songs"
}

class Album {
    var title: String?
    var description: String?
    var coverImageName: String?
    var songs: [String]?
    
    init(index: Int) {
        if index >= 0 && index < AlbumLibrary().albums.count {
            let album = AlbumLibrary().albums[index]
            
            title = album[AlbumKeys.title] as? String
            description = album[AlbumKeys.description] as? String
            coverImageName = album[AlbumKeys.songs] as? [String]
        }
    }
}
