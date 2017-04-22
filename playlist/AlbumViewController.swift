//
//  AlbumViewController.swift
//  playlist
//
//  Created by Popsical on 21/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {

    var album: Album? = Album(index: 1)
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var albumCoverImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!

    func updateUI() {
        let albumName = "\(String(describing: album?.coverImageName))"
        backgroundImageView.image = UIImage(named: albumName)
        albumCoverImageView.image = UIImage(named: albumName)
        
        let songList = ((album?.songs)! as NSArray).componentsJoined(by: ", ")
        descriptionTextView.text = "\(String(describing: album?.description)) \n\nSome songs in the album:\n\(songList)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Album view did load")
        print(backgroundImageView)
        print(albumCoverImageView)
        print(descriptionTextView)
        updateUI()
    }
}
