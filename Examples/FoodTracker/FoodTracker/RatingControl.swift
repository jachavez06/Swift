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

    //MARK: Properties
    private var ratingButtons = [UIButton]()    // Don't want anything outside the RatingControl class to access buttons, so we set them to private
    
    var rating = 0  // Need to be able to read and write this value from outside the class, so leave it as internal access. 
    
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    func ratingButtonTapped(button: UIButton){
        print("Button pressed.")
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
        
        // Setup the button action.
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        // The #selector expression returns the Selector value for the provided method. A selector is an opaque value that identifies the method. Older APIs used selectors to dynamically invoke methods at runtime. While newer APIs have largely replaced selectors with blocks, many methods—like performSelector(_:) and addTarget(_:action:forControlEvents:)—still take selectors as arguments. In this example, the #selector(RatingControl.ratingButtonTapped(_:)) expression returns the selector for your ratingButtonTapped(_:) action method. This lets the system call your action method when the button is tapped.
        
        // Add the button to the stack (managed by RatingControl).
        addArrangedSubview(button)
    }
}
