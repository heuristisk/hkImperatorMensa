//
//  DataSource.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 28/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import Foundation

final class Source {

    private static let musicArtistAlbums = [
        MusicArtistAlbumModel(name: "Killers", year: "1981", image: "album.killers"),
        MusicArtistAlbumModel(name: "Power Slave", year: "1984", image: "album.power.slave"),
        MusicArtistAlbumModel(name: "Fear of the dart", year: "1992", image: "album.fear.of.the.dark")
    ]

    static let mainMenu = [
        MainMenu(title: "Musics", image: "music"),
        MainMenu(title: "Movies", image: "video")
    ]

    static let musicArtists = [
        MusicArtistModel(name: "Iron Maiden", genre: "Heavy Metal", albuns: musicArtistAlbums, image: "iron.maiden"),
        MusicArtistModel(name: "Pantera", genre: "Heavy Metal", albuns: [MusicArtistAlbumModel](), image: "pantera"),
        MusicArtistModel(name: "Nirvana", genre: "Grunge", albuns: [MusicArtistAlbumModel](), image: "nirvana"),
        MusicArtistModel(name: "Offspring", genre: "Punk Rock", albuns: [MusicArtistAlbumModel](), image: "offspring"),
        MusicArtistModel(name: "Metallica", genre: "Heavy Metal", albuns: [MusicArtistAlbumModel](), image: "metallica"),
        MusicArtistModel(name: "Legião Urbana", genre: "Pop Rock", albuns: [MusicArtistAlbumModel](), image: "legiao.urbana")
    ]

    static let movies = [
        MovieModel(name: "Star Wars: The Last", image: "star.wars", releaseDate: "2017", genre: " Action", description: "Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares for battle with the First Order.", runtime: "2h 32min"),
        MovieModel(name: "It", image: "it", releaseDate: "2017", genre: "Thriller", description: "In a small town in Maine, seven children known as The Losers Club come face to face with life problems, bullies and a monster that takes the shape of a clown called Pennywise.", runtime: "2h 14min")
    ]
}
