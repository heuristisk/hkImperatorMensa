//
//  Navigator.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 27/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

enum Segue {
    case home(source: [MainMenu])
    case musicArtists(source: [MusicArtistModel])
    case movies(source: [MovieModel])
    case musicArtistAlbuns(source: [MusicArtistAlbumModel], title: String)
    case oops
}

final class Navigator {

    func show(segue: Segue, sender: UIViewController) {
        switch segue {
        case .home(let source):
            let homeViewController = GenericTableViewController(source: source, title: "Menu")
            homeViewController.didSelect = goToScreen(sender: homeViewController)
            show(target: homeViewController, sender: sender)
        case .musicArtists(let source):
            let vc = GenericTableViewController(source: source, title: "Music Artistis")
            vc.didSelect = goToAlbumsScreen(sender: vc)
            show(target: vc, sender: sender)
        case .movies(let source):
            let vc = GenericTableViewController(source: source, title: "Movies")
            vc.didSelect = { [weak self] _ in
                guard let strongSelf = self else { return }
                strongSelf.show(segue: .oops, sender: sender)
            }
            show(target: vc, sender: sender)
        case .musicArtistAlbuns(let source, let title):
            let vc = GenericTableViewController(source: source, title: title)
            show(target: vc, sender: sender)
        case .oops:
            let vc = UIStoryboard.defaultStoryboard.instantiateViewController(ofType: CustomViewController.self)
            show(target: vc, sender: sender)
        }
    }

    private func goToAlbumsScreen(sender: UIViewController) -> (MusicArtistModel) -> Void {
        return { [weak self] (model: MusicArtistModel) in
            guard let strongSelf = self else { return }
            if model.albuns.count > 0 {
                strongSelf.show(segue: .musicArtistAlbuns(source: model.albuns, title: model.name), sender: sender)
            } else {
                strongSelf.show(segue: .oops, sender: sender)
            }
        }
    }

    private func goToScreen(sender: UIViewController) -> (MainMenu) -> Void {
        return { [weak self] (model: MainMenu) in
            guard let strongSelf = self else { return }
            switch model.title {
            case "Musics":
                strongSelf.show(segue: .musicArtists(source: Source.musicArtists), sender: sender)
            case "Movies":
                strongSelf.show(segue: .movies(source: Source.movies), sender: sender)
            default:
                break
            }
        }
    }

    private func show(target: UIViewController, sender: UIViewController) {
        if let nav = sender as? UINavigationController {
            nav.pushViewController(target, animated: false)
            return
        }

        if let nav = sender.navigationController {
            nav.pushViewController(target, animated: true)
        } else {
            sender.present(target, animated: true, completion: nil)
        }
    }
}
