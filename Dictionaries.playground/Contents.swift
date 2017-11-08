//: Dictionaries

import UIKit

// Name : Price
var apps = [String: Double]()

apps["FriendMe"] = 0.99
apps["Boggy"] = 1.99
apps["NoteRighter"] = 4.99
apps["ChittyPic"] = 9.99

apps // -> ["ChittyPic": 9.99, "Boggy": 1.99, "NoteRighter": 4.99, "FriendMe": 0.99]

apps["NoteRighter"] = nil // -> apps["ChittyPic": 9.99, "Boggy": 1.99, "FriendMe": 0.99]

for (name, price) in apps {
	print("\(name) is $\(price) on the App Store")
}

// Complex Dictionary

var studentsRecords = [
	"Jennifer": [
		"age": 12,
		"grade": 91
	],
	"Bobby": [
		"age": 15,
		"grade": 87
	],
	"Miya": [
		"age": 9,
		"grade": 74
	],
	"Nicholas": [
		"age": 14,
		"grade": 94
	]
]

// loop into values
if let dict = studentsRecords as? Dictionary<String, AnyObject> {
	if let miya = dict["Miya"] as? Dictionary<String, Int> {
		if let grade = miya["grade"] as? Int {
			print("Maya's Grade: \(grade)")
		}
	}
}
// print all grades
for (student, record) in studentsRecords {
	for (age, grade) in record {
		print("Grade: \(grade)")
	}
}



