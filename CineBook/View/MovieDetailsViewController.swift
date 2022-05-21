//
//  MovieInfoViewController.swift
//  CineBook
//
//  Created by Edward Huang on 15/5/22.
//

import UIKit

var movieTitle = ""

class MovieDetailsViewController: UIViewController {
   
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var runTimeLabel: UILabel!
    @IBOutlet weak var sessionSegControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        
        getMovieDetails(ID: movieID)
        overviewLabel.sizeToFit()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToBuyTickets") {
            let VC = segue.destination as! BuyTicketsViewController
            VC.session = sessionSegControl.titleForSegment(at: sessionSegControl.selectedSegmentIndex)!
        }
    }
        
    func getMovieDetails(ID: Int) {
    
        let urlString = "https://api.themoviedb.org/3/movie/\(ID)?api_key=890fe93c18fdae6d6dd0986ea033a867&language=en-US"
        
        URLSession.shared.dataTask(with: URL(string: urlString)!) { data, response, error in
            guard let data = data, error == nil else { return }
            
            var result: Response?
            do {
                result = try JSONDecoder().decode(Response.self, from: data)
            } catch {
                print(error)
            }
            
            guard let json = result else {
                return
            }
            
    
            // parse data to outlets
            DispatchQueue.main.async {
                self.overviewLabel.text = json.overview
                self.title = json.original_title
                self.dateLabel.text = "Release Date: \(json.release_date)"
                self.runTimeLabel.text = "Runtime: \(String(json.runtime)) mins"
                
                movieTitle = json.original_title
                
            }
        }
        
        .resume()
    }
    
    struct Response: Codable {
        let belongs_to_collection: MyResult
        let overview: String
        let original_title: String
        let release_date: String
        let runtime: Int
    }
    
    struct MyResult: Codable {
   //     let original_title: String
      //  let overview: String
       // let overview: String
    }
}
