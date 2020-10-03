//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by bashayer Al qaoud on 10/3/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var ratingView: UIView!
    @IBOutlet weak var PGrating: UILabel!
    @IBOutlet weak var PGratingView: UIView!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var movieReleaseDateView: UIView!
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()

        // Do any additional setup after loading the view.
    }
    func setMovieDetails() {
        movieImg.image = UIImage(named: selectedMovie.movieName)
        
        rating.text = "\(selectedMovie.rating)"
        PGrating.text = "\(selectedMovie.pgRating)"
        movieReleaseDate.text = "\(selectedMovie.movieReleaseDate)"
        
        actorImg1.image = UIImage(named: selectedMovie.actors[0])
        actorImg2.image = UIImage(named: selectedMovie.actors[1])
        actorImg3.image = UIImage(named: selectedMovie.actors[2])
        
        actorName1.text = selectedMovie.actors[0]
        actorName2.text = selectedMovie.actors[1]
        actorName3.text = selectedMovie.actors[2]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
