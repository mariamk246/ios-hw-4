//
//  ViewController.swift
//  hw4
//
//  Created by Mariam Alkandari on 10/11/20.
//  Copyright © 2020 Mariam Alkandari. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var sLabel: UILabel!
    @IBOutlet weak var sImage: UIImageView!
    
    var songPlayer: AVAudioPlayer?
    
    var song1: Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSong()
        configureView()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        configureSong()
    }
    
    func configureView(){
        sImage.image = UIImage(named: song1.image)
        sLabel.text = song1.songName
        artistLabel.text = song1.song
        
    }
    
    func configureSong(){
        let path = Bundle.main.path(forResource:song1.song, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            songPlayer = try AVAudioPlayer(contentsOf: url)
         
        } catch {
            // couldn't load file :(
        }
    }
    var played = false
    @IBAction func play( sender:UIButton) {
        if played{
            songPlayer!.pause()
            sender.setImage(UIImage(systemName: "play"),for: .normal)
            played.toggle()
        }
        else{
        songPlayer?.play()
            sender.setImage(UIImage(systemName: "pause"),for: .normal)
            played.toggle()
    }
     
    }
    
    @IBAction func forward(_ sender: Any) {
         songPlayer!.currentTime += 10
    }
    
    @IBAction  func backward() {
          songPlayer!.currentTime -= 10
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

