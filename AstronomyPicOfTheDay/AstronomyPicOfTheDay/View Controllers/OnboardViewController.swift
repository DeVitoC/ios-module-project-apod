//
//  OnboardViewController.swift
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/21/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import UIKit

class OnboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func checkItOut(_ sender: Any) {
        performSegue(withIdentifier: "ViewPicsSegue", sender: self)
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
