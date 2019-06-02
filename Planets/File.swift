import Foundation
import UIKit

class Planets {
    var name = ""
    var information = ""
    var image = UIImage()
}

struct QuestionPart {
    let name: String
    let info: String
    let question: String
    let answers: [String]
    let trueAnswer: Int
    let count: Int
}

let firstQuestion = QuestionPart(name: "Sun System", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)
let secondQuestion = QuestionPart(name: "", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)
let thirdQuestion = QuestionPart(name: "", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)
let fourthQuestion = QuestionPart(name: "", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)
let fifthQuestion = QuestionPart(name: "", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)
let sixthQuestion = QuestionPart(name: "", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)
let seventhQuestion = QuestionPart(name: "", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)
let eighthQuestion = QuestionPart(name: "", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)
let ninthQuestion = QuestionPart(name: "", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)
let tenthQuestion = QuestionPart(name: "", info: "", question: "What is the hottest planet in the solar system?", answers: ["World", "Venus", "Mars", "Kepler-16b"], trueAnswer: 2, count: 1)

let firstCase = [firstQuestion, secondQuestion, thirdQuestion, fourthQuestion, fifthQuestion, sixthQuestion, seventhQuestion, eighthQuestion, ninthQuestion, tenthQuestion]
let secondCase = [firstQuestion, secondQuestion, thirdQuestion, fourthQuestion, fifthQuestion, sixthQuestion, seventhQuestion, eighthQuestion, ninthQuestion, tenthQuestion]

let cases = [firstCase, secondCase]

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
