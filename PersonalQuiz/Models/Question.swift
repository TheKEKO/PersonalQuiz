//
//  Question.swift
//  PersonalQuiz
//
//  Created by Aleksandr F. on 14.03.2022.
//

struct Question {
    let title: String
    let responseType: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Which food do you like the most?",
                responseType: .single,
                answers: [
                    Answer(title: "Steak", animal: .dog),
                    Answer(title: "Fish", animal: .cat),
                    Answer(title: "Carrots", animal: .rabbit),
                    Answer(title: "Corn", animal: .turtle)
                ]
            ),
            Question(
                title: "What do you like more?",
                responseType: .multiple,
                answers: [
                    Answer(title: "Swim", animal: .dog),
                    Answer(title: "Sleep", animal: .cat),
                    Answer(title: "Cuddlin", animal: .rabbit),
                    Answer(title: "Eat", animal: .turtle)
                ]
            ),
            Question(
                title: "Do you like car rides?",
                responseType: .ranged,
                answers: [
                    Answer(title: "Hate", animal: .cat),
                    Answer(title: "Nervous", animal: .rabbit),
                    Answer(title: "Don't notice", animal: .turtle),
                    Answer(title: "Love", animal: .dog)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐕"
    case cat = "🐈‍⬛"
    case rabbit = "🐇"        
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are DOG 😃. You like being with friends. You surround yourself with people you like and are always ready to help."
        case .cat:
            return "You are CAT 😃. You're on your mind. Love to walk by yourself. Do you appreciate loneliness."
        case .rabbit:
            return "You are RABBIT 😃. You like everything soft. You are healthy and full of energy."
        case .turtle:
            return "You are TURTLE 😃. Your strength is in wisdom. Slow and thoughtful wins over long distances."
        }
    }
}

