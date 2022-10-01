//
//  ViewController.swift
//  Izlude Group 7 Storyboard Quiz
//
//  Created by PT.Koanba on 22/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var itemImageView: UIImageView!

    @IBOutlet private weak var buttonBlue: UIButton!
    @IBOutlet private weak var buttonRed: UIButton!
    @IBOutlet private weak var buttonPink: UIButton!
    
    @IBOutlet private weak var itemTitleLabel: UILabel!
    @IBOutlet private weak var itemPriceLabel: UILabel!
    @IBOutlet private weak var itemDescLabel: UILabel!
    
    @IBOutlet private weak var buttonContentView: UIView!
    @IBOutlet private weak var addItemButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureButton()
        configureButtonContentView()
        
    }

    private func configureButton() {
        buttonBlue.layer.cornerRadius = buttonBlue.bounds.size.width / 2.0
        buttonBlue.clipsToBounds = true
        
        buttonRed.layer.cornerRadius = buttonRed.bounds.size.width / 2.0
        buttonRed.clipsToBounds = true
        
        buttonPink.layer.cornerRadius = buttonPink.bounds.size.width / 2.0
        buttonPink.clipsToBounds = true
        
        addItemButton.layer.cornerRadius = 8
        addItemButton.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        addItemButton.clipsToBounds = true
    }
    
    private func configureButtonContentView() {
        buttonContentView.layer.cornerRadius = 8
        buttonContentView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        buttonContentView.clipsToBounds = true
    }
    
    
    @IBAction func onBlueButtonTapped(_ sender: UIButton) {
        itemImageView.image = UIImage(named: "blueChair")
        itemTitleLabel.text = "Blue Chair"
        itemPriceLabel.textColor = UIColor.systemBlue
    }
    
    @IBAction func onRedButtonTapped(_ sender: UIButton) {
        itemImageView.image = UIImage(named: "redChair")
        itemTitleLabel.text = "Red Chair"
        itemPriceLabel.textColor = UIColor.systemRed
    }
    
    @IBAction func onPinkButtonTapped(_ sender: UIButton) {
        itemImageView.image = UIImage(named: "pinkChair")
        itemTitleLabel.text = "Pink Chair"
        itemPriceLabel.textColor = UIColor(red: 1.0, green: 155/255, blue: 1.0, alpha: 1)
    }
}

