//
//  Scene.swift
//  MyAdventure
//
//  Created by user221491 on 2/10/23.
//

import Foundation

struct Scene {
    
    init(_ desc: String, _ o_one:String, _ o_two: String, _ indexOne: Int, _ indexTwo: Int) {
        description = desc
        option_one = o_one
        option_two = o_two
        option_one_index = indexOne
        option_two_index = indexTwo
    }
    
    var description: String
    var option_one: String
    var option_two: String
    var option_one_index: Int
    var option_two_index: Int
}
