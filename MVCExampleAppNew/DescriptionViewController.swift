//
//  DescriptionViewController.swift
//  MVCExampleAppNew
//
//  Created by Sergey Kosichkin on 12.12.2022.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet var descriptionLabel: UILabel!
    
    var meal: Meal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = meal.name
        descriptionLabel.text = meal.description
    }
    
}
