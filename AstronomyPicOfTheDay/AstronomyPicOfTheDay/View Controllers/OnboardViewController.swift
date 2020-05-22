//
//  OnboardViewController.swift
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/21/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import UIKit

class OnboardViewController: UIViewController {

    // MARK: - Properties
    let picOfTheDayController = PicOfTheDayController()
    var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        let dateString = dateFormatter.string(from: Date())
        guard let date = dateFormatter.date(from: dateString) else { return }
        picOfTheDayController.fetchPhotos(for: date) { (pic, error) in
            NSLog("\(date)")
        }
    }
    
    @IBAction func checkItOut(_ sender: Any) {
        performSegue(withIdentifier: "ViewPicsSegue", sender: self)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ViewPicsSegue" {
            let dailyPicsVC = segue.destination as? DailyPicsViewController
            dailyPicsVC?.picOfTheDayController = picOfTheDayController
            let date = Date()
            let dateString = dateFormatter.string(from: date)
            let monthString = dateString.split(separator: "-")[1]
            let monthInt = Int.init(monthString)
            let month: Month
            if let monthInt = monthInt {
                switch monthInt {
                    case 1:
                        month = .january
                    case 2:
                        month = .february
                    case 3:
                        month = .march
                    case 4:
                        month = .april
                    case 5:
                        month = .may
                    case 6:
                        month = .june
                    case 7:
                        month = .july
                    case 8:
                        month = .august
                    case 9:
                        month = .september
                    case 10:
                        month = .october
                    case 11:
                        month = .november
                    default:
                        month = .december
                }
                dailyPicsVC?.month = month
            }
        }
    }
}
