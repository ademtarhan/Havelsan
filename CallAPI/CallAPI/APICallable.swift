//
//  File.swift
//  CallAPI
//
//  Created by Adem Tarhan on 20.10.2022.
//

import Foundation

protocol APICallable {
    var APIKey: String { get }
    var BaseURL: String { get }
}

class APICallableImpl: APICallable {
    var APIKey: String { return "c51c01d6b237900097f895fb7fd09ed4" }
    var BaseURL: String { return "https://api.themoviedb.org/4/" }
}
