//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Jesus Chavez on 7/9/17.
//  Copyright © 2017 Testing. All rights reserved.
//

import UIKit

// Custom view subclass of UIView.
class RatingControl: UIStackView {

    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Private Methods
    private func setupButtons(){
        
        // Create the burron.
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Add constraints.
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Add the button to the stack.
        addArrangedSubview(button)
    }
}
