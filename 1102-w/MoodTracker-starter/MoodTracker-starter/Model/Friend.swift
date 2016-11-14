//
//  Friend.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 04/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//
import Foundation

// ya sqaud template
class Friend {
    var name: String
    var mood: Mood
    var description: String?
    
    init(name: String, mood: Mood) {
        self.name = name
        self.mood = mood
}

}
