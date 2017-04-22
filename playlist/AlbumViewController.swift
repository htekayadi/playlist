//
//  AlbumViewController.swift
//  playlist
//
//  Created by Popsical on 21/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {

    var album: Album? 
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var albumCoverImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!

    func updateUI() {
        let albumName = "\((album?.coverImageName)!)"
        backgroundImageView.image = UIImage(named: albumName)
        albumCoverImageView.image = UIImage(named: albumName)
        
        let songList = ((album?.songs)! as NSArray).componentsJoined(by: ", ")
        descriptionTextView.text = "\((album?.description)!) \n\nSome songs in the album:\n\(songList)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Album"
        updateUI()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        backgroundImageView?.removeFromSuperview()
    }
}
