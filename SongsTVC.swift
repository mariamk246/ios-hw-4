//
//  SongsTVC.swift
//  hw4
//
//  Created by Mariam Alkandari on 10/11/20.
//  Copyright © 2020 Mariam Alkandari. All rights reserved.
//

import UIKit

class SongsTVC: UITableViewController {
    var Song1 : [Song]!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Song1.count
    }

   override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 209
          
      }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SongsCellTVC

        // Configure the cell..
        let song = Song1[indexPath.row]
        cell.configureCell(song: song)
        return cell
    }
  

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let song = Song1[indexPath.row]
        performSegue(withIdentifier: "details2", sender: song)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let song = sender as! Song
        let vc = segue.destination as! ViewController
        vc.song1 = song
     
    
    

}
}
