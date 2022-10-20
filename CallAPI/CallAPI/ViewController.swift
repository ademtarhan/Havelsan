//
//  ViewController.swift
//  CallAPI
//
//  Created by Adem Tarhan on 20.10.2022.
//

import Foundation
import UIKit

class ViewController: UIViewController, APICallable {
    let BaseURL = "https://api.themoviedb.org/4/"
    let APIKey = "c51c01d6b237900097f895fb7fd09ed4"

    override func viewDidLoad() {
        super.viewDidLoad()

        getMovies()
    }

    func getMovies() {
        var url: URL? = URL(string: "\(BaseURL)list/1?api_key=\(APIKey)")
        URLSession.shared.dataTask(with: url!) { data, _, error in
            guard error == nil else {
                print(error?.localizedDescription)
                return
            }
            guard data != nil else {
                print(error?.localizedDescription)
                return
            }
            do {
                let movieResponse = try JSONDecoder().decode(Movie.self, from: data!)
                print(movieResponse)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
