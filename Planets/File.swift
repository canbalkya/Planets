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
let question1 = Question(question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Jupiter"], trueAnswer: 2, count: 1)
let question2 = Question(question: "What is the largest planet in the solar system?", answers: ["Neptune", "Saturn", "Jupiter", "Mars"], trueAnswer: 3, count: 2)
let question3 = Question(question: "What is the smallest planet in the solar system?", answers: ["Merkury", "World", "Uranus", "Jupiter"], trueAnswer: 1, count: 3)
let question4 = Question(question: "How many planets are there in the Solar System?", answers: ["8", "9", "7", "6"], trueAnswer: 1, count: 4)
let question5 = Question(question: "What is Jupiter's largest moon?", answers: ["Ganymede", "Callisto", "Lo", "Europa"], trueAnswer: 1, count: 5)
let question6 = Question(question: "What is the planet known as the Gas Giant in the Solar System?", answers: ["Uranus", "World", "Mars", "Jupiter"], trueAnswer: 4, count: 6)
let question7 = Question(question: "What is the sixth planet closest to the Sun?", answers: ["World", "Venus", "Neptune", "Saturn"], trueAnswer: 4, count: 7)
let question8 = Question(question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Jupiter"], trueAnswer: 2, count: 8)
let question9 = Question(question: "What is the coldest planet in the solar system?", answers: ["Saturn", "Uranus", "Neptune", "Mars"], trueAnswer: 2, count: 9)
let question10 = Question(question: "What is the hottest planet in the solar system?", answers: ["Merkury", "Jupiter", "Venus", "Uranus"], trueAnswer: 3, count: 10)

// Question Parts
let questionPart1 = QuestionPart(name: "Sun System", info: "", image: UIImage(named: "Sun System")!, questions: [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10])

let cases = [questionPart1]

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
