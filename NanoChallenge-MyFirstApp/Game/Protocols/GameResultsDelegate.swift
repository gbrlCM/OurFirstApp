//
//  GameResultsDelegate.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 03/06/21.
//

import Foundation

protocol GameResultsDelegate: AnyObject {
    func newGame() -> Void
    func goToHome() -> Void
}
