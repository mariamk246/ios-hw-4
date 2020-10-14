//
//  SongsCellTVC.swift
//  hw4
//
//  Created by Mariam Alkandari on 10/11/20.
//  Copyright © 2020 Mariam Alkandari. All rights reserved.
//

import UIKit

class SongsCellTVC: UITableViewCell {

    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var songLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(song: Song){
        self.songImage.image = UIImage(named: song.image)
        self.songLabel.text = song.songName
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
