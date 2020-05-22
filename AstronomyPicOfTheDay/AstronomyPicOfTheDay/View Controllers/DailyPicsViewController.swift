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
    var picOfTheDayController: PicOfTheDayController?
    var month: Month?
    var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()

    // MARK: - IBOutlets
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var monthLabel: UILabel!

    // MARK: - View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        monthLabel.text = month?.rawValue.capitalized
    }

    // MARK: - IBActions
    @IBAction func goToPreviousMonth(_ sender: Any) {
        fetchNewMonth(monthFromNow: -1)
    }
    @IBAction func goToNextMonth(_ sender: Any) {
        fetchNewMonth(monthFromNow: 1)
    }


    // MARK: - Action Methods
    func fetchNewMonth(monthFromNow: Int) {
        guard let month = month else { return }
        switch month {
            case .january:
                if monthFromNow < 0 {
                    self.month = .december
                } else {
                    self.month = .february
            }
            case .december:
                if monthFromNow > 0 {
                    self.month = .january
                } else {
                    self.month = .november
            }
            default:
                newMonth(newMonth: monthFromNow)
        }

    }

    // MARK: - Helper Methods
    func newMonth(newMonth: Int) {
        switch newMonth {
            case 2:
                month = newMonth > 0 ? .march : .january
            case 3:
                month = newMonth > 0 ? .april : .february
            case 4:
                month = newMonth > 0 ? .may : .march
            case 5:
                month = newMonth > 0 ? .june : .april
            case 6:
                month = newMonth > 0 ? .july : .may
            case 7:
                month = newMonth > 0 ? .august : .june
            case 8:
                month = newMonth > 0 ? .september : .july
            case 9:
                month = newMonth > 0 ? .october : .august
            case 10:
                month = newMonth > 0 ? .november : .september
            default:
                month = newMonth > 0 ? .december : .october
        }
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

extension DailyPicsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            guard let picOfTheDayController = self.picOfTheDayController else { return 0}
            return picOfTheDayController.pics.count
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = DailyPicCollectionViewCell()
        return cell
    }
}

enum Month: String {
    case january, february, march, april, may, june, july, august, september, october, november, december
}
