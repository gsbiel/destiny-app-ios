//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var stories : [Story] = []
    var currentStory: Int = 0


    func getCurrentStory() -> String {
        return stories[currentStory].title
    }
    
    mutating func nextStory(_ choiceNumber : Int){
        currentStory = stories[currentStory].getDestination(choiceNumber)
    }

    mutating func addStory(_ story : [Story]){
        stories = story
    }
    
}

    
    
    
    
        
