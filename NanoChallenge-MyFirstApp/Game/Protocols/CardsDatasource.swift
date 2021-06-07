//
//  CardsDatasource.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 07/06/21.
//

import Foundation

protocol CardsDatasource {
    func fetch() -> [Card]
}
