//
//  ViewController.swift
//  FoodTracker
//
//  Created by Jesus Chavez on 7/2/17.
//  Copyright © 2017 Testing. All rights reserved.
//

// This file defines a custom subclass of UIViewController named ViewController. Right now, this class simply inherits all the behavior defined by UIViewController. To override or extend that behavior, you override the methods defined on UIViewController.
import UIKit

// As you can see in the ViewController.swift file, the template’s implementation overrides both the viewDidLoad() and didReceiveMemoryWarning() methods; however, the template’s stub implementation doesn’t do anything yet, except call the UIViewController version of these methods. You can add your own code to customize the view controller’s response to these events.
class ViewController: UIViewController, UITextFieldDelegate{
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField! // stores a reference to the text field and configures the storyboard to set up that connection.
    @IBOutlet weak var mealNameLabel: UILabel!
    
    // The IBOutlet attribute tells Xcode that you can connect to the nameTextField property from Interface Builder (which is why the attribute has the IB prefix).
    // The weak keyword indicates that the reference does not prevent the system from deallocating the referenced object. Weak references help prevent reference cycles; however, to keep the object alive and in memory you need to make sure some other part of your app has a strong reference to the object. In this case, it’s the text field’s superview. A superview maintains a strong reference to all of its subviews. As long as the superview remains alive and in memory, all of the subviews remain alive as well. Similarly, the view controller has a strong reference to its content view—keeping the entire view hierarchy alive and in memory.
    // The rest of the declaration defines an implicitly unwrapped optional variable of type UITextField named nameTextField. Pay careful attention to the exclamation point at the end of the type declaration. This exclamation point indicates that the type is an implicitly unwrapped optional, which is an optional type that will always have a value after it is first set. When you access an implicitly unwrapped optional, the system assumes it has a valid value and automatically unwraps it for you. Note that this causes the app to terminate if the variable’s value has not yet been set.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks.
        nameTextField.delegate = self
    }

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

