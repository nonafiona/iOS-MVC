//
//  AddFriendViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 09/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
    
    var friendsTableViewController : FriendsTableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var moodSegmentedControl: UISegmentedControl!
    
    // MARK: Actions
    
    @IBAction func saveButtonPressed(_ sender: AnyObject) {
        // TO DO: Debug this after completing all other steps
        
        let mood : Mood
        
        if moodSegmentedControl.selectedSegmentIndex == 0 {
            mood = .happy
        } else if moodSegmentedControl.selectedSegmentIndex == 1 {
            mood = .medium
        } else if moodSegmentedControl.selectedSegmentIndex == 2 {
            mood = .angry
        }
        
        var friend = Friend(name: nameTextField.text!, mood: mood)
        dismissViewController()
        print("save button tapped")
        
    }
    
    @IBAction func cancelButtonPressed(_ sender: AnyObject) {
        dismissViewController()
        print("cancel button tapped")
    }
    
    // MARK: Helpers
    
    func dismissViewController() {
        presentingViewController?.dismiss(animated: true)
    }
    
    
    
}
