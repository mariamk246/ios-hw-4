//
//  SongsDataBase.swift
//  hw4
//
//  Created by Mariam Alkandari on 10/11/20.
//  Copyright © 2020 Mariam Alkandari. All rights reserved.
//

import Foundation


fileprivate var JonasSongs : [Song] = [
    .init(songName: "Drive", image: "Drive",song:"Drive.mp3"),
    .init(songName: "Feeling Alive", image: "Feeling Alive",song:" Feeling Alive.mp3"),
    .init(songName: "Make It Right", image: "Make It Right",song:"Make It Right.mp3"),
]

fileprivate var FifthSongs : [Song] = [
    .init(songName: "Me & My Girls", image:"Me & My Girls",song:"Me & My Girls.mp3"),
    .init(songName: "Im In Love With A Monster", image:"Im In Love With A Monster",song:"Im In Love With A Monster.mp3"),
    .init(songName: "Miss Movin On", image:"Miss Movin On",song:" Miss Movin On.mp3"),

]
fileprivate var HumoodSongs : [Song] = [
    .init(songName: "Ha Anatha", image: "Ha Anatha",song:"Ha Anatha.mp3"),
.init(songName: "Ain", image: "Ain",song:"ain.mp3"),
.init(songName: "Aseer Ahsan", image: "Aseer Ahsan",song:"aseer ahsan.mp3"),
  
]
var artists : [Artists] = [
    .init(name: "Jonas Brothers", image: "Jonas Brothers", songs: JonasSongs),
    .init(name: "Fifth Harmony", image: "Fifth Harmony", songs:FifthSongs),
    .init(name: "Humood Alkhudher", image: "Humood Alkhudher", songs: HumoodSongs),
]
   

