//
//  DailyPicsViewController.swift
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/22/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import UIKit

class DailyPicsViewController: UIViewController {

    // MARK: - Properties
    let picOfTheDayController = PicOfTheDayController()

    // MARK: - IBOutlets
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var monthLabel: UILabel!

    // MARK: - View Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - IBActions
    @IBAction func goToPreviousDay(_ sender: Any) {
    }
    @IBAction func goToNextDay(_ sender: Any) {
    }


    // MARK: - Action Methods

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DailyPicsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return picOfTheDayController.pics.count
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = DailyPicCollectionViewCell()
        return cell
    }


}
