//
//  StoryLogic.swift
//  MyAdventure
//
//  Created by user221491 on 2/10/23.
//

import Foundation

struct StoryLogic {
    
    var storyindex : Int = 0
    
    let story = [
        Scene("You've always dreamt of yourself as a hero, but here you are, the lowest ranking crew member on a ship of 200,000. You've just finished unclogging the automated coffee dispenser nozzles on Deck 23-A. Do you:",
              "Grab a coffee and admire the stars through the window as you daydream about being a heroic starfighter pilot?",
              "Begrudgingly head towards the next item on your long list of gross things to clean?",
              1, 2),
        Scene("You set your cup into the machine and press the button. When you go to grab it, the entire ship jolts to the left. Alarm klaxxons ring out and the hallways flood with red light. Out of the window you can see starfighters screaming by. Your ship is under attack! Do you:",
              "Spring into action and run for the nearest hanger bay?",
              "Spring into action and flee for the nearest escape pod?",
              3, 4),
        Scene("You hang your head and trudge on to your next chore. On the way, you spot a superior officer looking ill. They stumble towards you and collapse on the floor at your feet. As they look up at you, eyes pleading for help, a horrifying alien bursts from their stomach and gives an ear-shattering screech. Do you:",
              "Grab the biggest, heaviest wrench from your toolbelt and engage the beast in combat?",
              "Turn and run in the other direction?",
              5, 6),
        Scene("When you get to the hangar, ships are already being launched. You hear someone yell for you to get in one. Today is your day to be a hero! You launch and immediately find yourself being followed. Do you:",
              "Yank back on the controls and loop over the top of the ship behind you?",
              "Wait until they fire and do a barrel-roll at the last second?",
              7, 8),
        Scene("You find the closest escape pod and strap in. You hear another crew member running to the escape pod, but you press the button to launch before they can get in. As the pod ejects, you think to yourself:",
              "Maybe you'll be a hero on the next mission you go on...(Restart)",
              "Maybe you'll still be a coward...(Restart)",
              0, 0),
        Scene("You grab your wrench and square up against the alien. It hisses at you and lunges! It tackles you to the ground, trying to bite you. You're holding it off, for now. Do you:",
              "Use its weight against it and flip it over the top of you?",
              "Swing your wrench into the side of its face?",
              9, 10),
        Scene("You turn and bolt in the direction you came from. You can hear screams and violence behind you, but you do not dare to look back. Down the hallway you think you see an open vent to the left and an escape pod to the right. Do you:",
              "Crawl into the vent and hope that thing can't smell you?",
              "Get into the escape pod?",
              11, 4),
        Scene("You yank back on the controls with all your might. Your ship loops right over the top of the other one and you swear you can see a puzzled look on the pilot's face. Once behind them, you fire your lasers and your ship goes screaming through the explosion. It's super cool! The skirmish ends and a few days later you are awarded a medal in front of everyone. Do you:",
              "Play it cool? Real heroes don't care about medals.",
              "Rub it in everyone's face? They always looked down on you.",
              12, 13),
        Scene("You wait nervously. You think you see the other pilot getting ready to fire on you, so you do a barrel-roll. However, you were so focused on the ship behind you that you didn't see the one coming at you. Your ship collides with theirs. Game over, man. Game over.",
              "Restart",
              "Restart",
              0, 0),
        Scene("The creature is about to bite your face off, but its leaning forward with all its weight. You use its weight to flip the alien over the top of you. Before you can get up, you hear a blaster shot ring out. The super-cool, heroic captain, who everyone loves, has killed the alien and gotten all the accolades. Do you:",
              "Stew about it and go back to your job? (Restart)",
              "Sneak off the ship at the next port? (restart)",
              0, 0),
        Scene("You bring your wrench up and connect with the alien's face, or at least the part its trying to bite you with. It rolls off you to the side. You scamper to your feet and ready your wrench for another blow, but the creature is no longer moving. Everyone in the room cheers for you! The super-cool captain calls you to the bridge to award you a medal. Do you:",
              "Play it cool? Real heroes don't care about medals.",
              "Rub it in everyone's face? They always looked down on you.",
              12, 13),
        Scene("You crawl into the vent. It's hot and stuffy and cramped. You shimmy in as far as you can, clamp your eyes shut, and stay as silent as you can. Eventually, you hear people calling your name, assuring you the alien has been defeated. Do you:",
              "Scream for help getting out of the vent?",
              "Shimmy your way back out of the vent?",
              14, 14),
        Scene("You graciously accept your medal. Someone shouts for a speech and you deliver an eloquently humble monologue. The super-cool captain takes you under his wing and begins teaching you, grooming you to be ready to command your own ship. You win!",
              "Restart",
              "Restart",
              0, 0),
        Scene("You snatch the medal out of the captain's hand and sneer at everyone in attendance. 'I told you! I told you all I was a real hero!' you shout. You notice people rolling their eyes and leaving the room. I guess you win?",
              "Restart (I think you can do better)",
              "Restart (Seriously. You don't want to go out this way.)",
              0, 0),
        Scene("Days later, the entire crew has begun calling you 'Captain Vents-Their-Pants'... even the ones who weren't there.",
              "Restart (You don't deserve this ending)",
              "Restart (Seriously, you don't)",
              0, 0),
    ]
    
    func getStoryDesc() -> String {
        return story[storyindex].description
    }
    
    func getChoiceOne() -> String {
        return story[storyindex].option_one
    }
    
    func getChoiceTwo() -> String {
        return story[storyindex].option_two
    }
    
    mutating func getNextScene(_ choice: String) {
        if choice == "1" {
            storyindex = story[storyindex].option_one_index
        }
        else {
            storyindex = story[storyindex].option_two_index
        }
    }
}
