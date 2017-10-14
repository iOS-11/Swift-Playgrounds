//: Loops

import UIKit

// In Stock: phones, games, tablets, laptops, headphones
var inStockItems = [750.00, 60.00, 250.00, 1200.00, 300.00]

// Sale, 10% off all items today
// Repeat
var index = 0
repeat {
	inStockItems[index] = inStockItems[index] - (inStockItems[index] * 0.10)
	index += 1
} while index < inStockItems.count

print(inStockItems)

// For Loop
for index in 0..<inStockItems.count {
	inStockItems[index] = inStockItems[index] - (inStockItems[index] * 0.10)
}

print(inStockItems)

for item in inStockItems {
	print("Item Price: $\(item)")
}


