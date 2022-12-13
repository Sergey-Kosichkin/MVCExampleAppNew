//
//  MealDetailsViewController.swift
//  MVCExampleAppNew
//
//  Created by Sergey Kosichkin on 12.12.2022.
//

import UIKit

class MealDetailsViewController: UIViewController {

    @IBOutlet var mealStackView: UIStackView!
    
    @IBOutlet var mealImageView: UIImageView! {
        didSet {
            mealImageView.layer.cornerRadius = 50
            mealImageView.contentMode = .scaleAspectFill
        }
    }
    
    @IBOutlet var mealNameLabel: UILabel!
    @IBOutlet var mealPriceLabel: UILabel!
    @IBOutlet var mealRatingLabel: UILabel!
    
    private let meal = Meal.getMeal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI(with: view.bounds.size)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {
            return
        }
        guard let descriptionVC = navigationVC.topViewController as? DescriptionViewController else {
            return
        }
        descriptionVC.meal = meal
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        setupUI(with: size)
    }
    
}



// MARK: -Private Methods
extension MealDetailsViewController {
    
    /// Update UI with axis mode
    ///
    /// - Parameter size: Set to super view size
    ///
    ///This method changes UI with current orientation of the device.
    private func setupUI(with size: CGSize) {
        let isVertical = size.width < size.height
        mealStackView.axis = isVertical ? .vertical : .horizontal
        
        
        mealImageView.image = UIImage(named: meal.image)
        mealNameLabel.text = meal.name
        mealPriceLabel.text = meal.price
        mealRatingLabel.text = meal.ratingBar
    }
}
