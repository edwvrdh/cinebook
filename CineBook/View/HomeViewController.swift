//
//  ViewController.swift
//  CineBook
//
//  Created by Edward Huang on 15/5/22.
//

import UIKit

var movieID = 0

class HomeViewController: UIViewController {
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        cell.setup(with: movies[indexPath.row])
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 320)
    }
}

extension HomeViewController: UICollectionViewDelegate {
    
    // segue to Movie Details screen
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // set movieID depending on the movie that the user taps on
        switch indexPath.item {
        case 0:
            movieID = 752623
        case 1:
            movieID = 453395
        case 2:
            movieID = 675353
        case 3:
            movieID = 532710
        case 4:
            movieID = 361743
        default:
            return
        }
        
        self.performSegue(withIdentifier: "movieDetails", sender: nil)
    }
}
