//
//  VideoCell.swift
//  VideosList
//
//  Created by admin on 20/04/22.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    func setVideo(video:Video){
        img.image = video.image
        label.text = video.title
    }
}
