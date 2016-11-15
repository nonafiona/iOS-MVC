//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var friendArray = [
        Friend(name: "OG Goblin", mood: .angry),
        Friend(name: "Labyrinth Dweller", mood: .medium),
        Friend(name: "Spitfire Tree Spirit", mood: .angry),
        Friend(name: "Soul Resonance", mood: .happy),
        Friend(name: "Water Demon", mood: .medium),
        Friend(name: "Tom Bombadil", mood: .happy),
        Friend(name: "Balrog", mood: .angry)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        
        // not sure if this code should go in the friend model....
        let friend = friendArray[indexPath.row]
        // gets the friend inside the cell
        cell.currentFriend = friend
        cell.nameLabel.text = friend.name
        
        // set emoji to show in the table view
        cell.moodButton.setTitle(friend.mood.rawValue, for: .normal)
        
        // moodButtonPressed on self
        cell.friendsTableViewController = self
        
        //switch statement for description equal to mood
        switch friend.mood {
        case .happy : cell.moodDescriptionLabel.text? = "hey it's a good day"
        case .medium : cell.moodDescriptionLabel.text? = "eh, can't complain"
        case .angry : cell.moodDescriptionLabel.text? = "grumpster dumpster"
        }
        
        print(indexPath.row)
        return cell
        
    }
    
    func update(friend: Friend!, newMood: Mood){
        print(#function, #file, #line)
        
        friend.mood = newMood
        tableView.reloadData()
        
    }
    
    // 2: add a new method in FriendsTableViewController that Friend that is passed in gets added to the friends array and the tableView gets updated afterwards
    
    func addNewFriend(friend: Friend!) {
        
    }
}
