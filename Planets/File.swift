import Foundation
import UIKit

class Planets {
    var name = ""
    var information = ""
    var image = UIImage()
}

struct Question {
    let question: String
    let answers: [String]
    let trueAnswer: Int
    let count: Int
}

struct QuestionPart {
    let name: String
    let info: String
    let image: UIImage
    let questions: [Question]
}

// Sun Sytem
let question1SS = Question(question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Jupiter"], trueAnswer: 2, count: 1)
let question2SS = Question(question: "What is the largest planet in the solar system?", answers: ["Neptune", "Saturn", "Jupiter", "Mars"], trueAnswer: 3, count: 2)
let question3SS = Question(question: "What is the smallest planet in the solar system?", answers: ["Merkury", "World", "Uranus", "Jupiter"], trueAnswer: 1, count: 3)
let question4SS = Question(question: "How many planets are there in the Solar System?", answers: ["8", "9", "7", "6"], trueAnswer: 1, count: 4)
let question5SS = Question(question: "What is Jupiter's largest moon?", answers: ["Ganymede", "Callisto", "Lo", "Europa"], trueAnswer: 1, count: 5)
let question6SS = Question(question: "What is the planet known as the Gas Giant in the Solar System?", answers: ["Uranus", "World", "Mars", "Jupiter"], trueAnswer: 4, count: 6)
let question7SS = Question(question: "What is the sixth planet closest to the Sun?", answers: ["World", "Venus", "Neptune", "Saturn"], trueAnswer: 4, count: 7)
let question8SS = Question(question: "What is the oldest planet in the solar system?", answers: ["World", "Jupiter", "Mars", "Mercury"], trueAnswer: 2, count: 8)
let question9SS = Question(question: "What is the coldest planet in the solar system?", answers: ["Saturn", "Uranus", "Neptune", "Mars"], trueAnswer: 2, count: 9)
let question10SS = Question(question: "What is the hottest planet in the solar system?", answers: ["Merkury", "Jupiter", "Venus", "Uranus"], trueAnswer: 3, count: 10)

// Kepler Planets
let question1KP = Question(question: "", answers: ["", "", "", ""], trueAnswer: 3, count: 1)
let question2KP = Question(question: "", answers: ["", "", "", ""], trueAnswer: 4, count: 2)
let question3KP = Question(question: "", answers: ["", "", "", ""], trueAnswer: 4, count: 3)
let question4KP = Question(question: "", answers: ["", "", "", ""], trueAnswer: 2, count: 4)
let question5KP = Question(question: "", answers: ["", "", "", ""], trueAnswer: 1, count: 5)
let question6KP = Question(question: "", answers: ["", "", "", ""], trueAnswer: 1, count: 6)


// Question Parts
let questionPart1 = QuestionPart(name: "Sun System", info: "", image: UIImage(named: "Sun System")!, questions: [question1SS, question2SS, question3SS, question4SS, question5SS, question6SS, question7SS, question8SS, question9SS, question10SS])
let questionPart2 = QuestionPart(name: "Kepler Planets", info: "", image: UIImage(named: "Kepler Planets")!, questions: [question1KP, question2KP, question3KP, question4KP, question5KP, question6KP])

let cases = [questionPart1, questionPart2]
let titles = [questionPart1.name, questionPart2.name]
let infos = [questionPart1.info, questionPart2.info]
let images = [questionPart1.image, questionPart2.image]

var trueAnswer = 0

var firstOpen = false
var secondOpen = false
var thirdOpen = false
var fourthOpen = false

var mercuryInfo = ""
var venusInfo = ""
var worldInfo = ""
var marsInfo = ""
var jupiterInfo = ""
var saturnInfo = ""
var uranusInfo = ""
var neptuneInfo = ""
var kepler16BInfo = ""
var kepler186FInfo = ""
var kepler296EInfo = ""
var kepler440BInfo = ""
var kepler442BInfo = ""
var kepler10BInfo = ""

func button() {
    UIButton.appearance().layer.cornerRadius = 20
}
