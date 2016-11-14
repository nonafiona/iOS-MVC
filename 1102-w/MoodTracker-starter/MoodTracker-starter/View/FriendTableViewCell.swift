//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    // currentFriend - accesses a specific cell's information
    var currentFriend: Friend?
    var friendsTableViewController: FriendsTableViewController?
    
    // TO-Do: reconnect all the IBOutlets
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var moodDescriptionLabel: UILabel!
    
    @IBOutlet weak var moodButton: UIButton!
    
    
    @IBAction func moodButtonPressed(_ sender: Any) {
        // accesses the current friend's mood from the specific cell
        friendsTableViewController?.update(friend: currentFriend, newMood: nextMood(mood: (currentFriend?.mood)!))
    }
    
    func nextMood(mood: Mood) -> Mood{
        
        switch mood {
        case .angry : return .medium;
        case .medium : return .happy;
        case .happy : return .angry
        }
    }
    
}
