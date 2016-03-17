//
//  FactModel.swift
//  FunFacts
//
//  Created by Gabriele on 3/16/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import GameKit

struct FactModel {
    let facts = ["First fact here", "Second fact here", "Third Fact Here", "Fourth Fact Here", "Fifth Fact Here"]
    
    func getRandomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(facts.count)
        return facts[randomNumber]
    }
}
