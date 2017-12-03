//: Protocol - network: a thing that networks...🤔?

import UIKit

// Protocols #1
protocol Number {
	var floatValue: Float { get }
}

extension Float: Number {
	var floatValue: Float {
		return self
	}
}

extension Double: Number {
	var floatValue: Float {
		return Float(self)
	}
}

extension Int: Number {
	var floatValue: Float {
		return Float(self)
	}
}

extension UInt: Number {
	var floatValue: Float {
		return Float(self)
	}
}

func +(valueA: Number, valueB: Number) -> Float {
	return valueA.floatValue + valueB.floatValue
}

func -(valueA: Number, valueB: Number) -> Float {
	return valueA.floatValue - valueB.floatValue
}

func *(valueA: Number, valueB: Number) -> Float {
	return valueA.floatValue * valueB.floatValue
}

func /(valueA: Number, valueB: Number) -> Float {
	return valueA.floatValue / valueB.floatValue
}

let a: Double = 3.7219
let b: Int = 7

let result = a * b

/*--------------------------------------------*/
// Protocols #2

class Question {
	var type: QuestionType
	var query: String
	var answer: String
	
	init(type: QuestionType, query: String, answer: String) {
		self.type = type
		self.query = query
		self.answer = answer
	}
}

enum QuestionType: String {
	case trueFalse = "The ocean is red."
	case multipleChoice = "What is the fastest animal on Earth: Zebra, Turtle, Cheetah, or Lion?"
	case shortAnswer = "What is the first letter of the alphabet?"
	case essay = "Explain Binary Fission in 30 words."
	
	static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String {
	case trueFalse = "False"
	case multipleChoice = "Zebra"
	case shortAnswer = "A"
	case essay = "Binary Fission is when two genetic cells connect through a cellular-like tube that eventually passes genes onto each other."
	
	static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
	func generateRandomQuestion() -> Question
}

class Quiz: QuestionGenerator {
	
	func generateRandomQuestion() -> Question {
		let randomNum = Int(arc4random_uniform(4))
		let randomType = QuestionType.types[randomNum]
		let randomQuery = randomType.rawValue
		let randomAnswer = AnswerType.types[randomNum].rawValue
		
		let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
		return randomQuestion
	}
}

let quiz = Quiz()
let question = quiz.generateRandomQuestion()
print("TYPE: \(question.type),\nQUERY: \(question.query), \nANSWER: \(question.answer)")
