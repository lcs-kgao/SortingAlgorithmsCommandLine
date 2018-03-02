//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

//Creating an empty array
var numbers : [Int] = []


//Add 20 random numbers to unsorted
for _ in 1...20 {
    numbers.append( random(between: 1, and: 50) )
}



// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")


//
for j in stride(from: numbers.count - 2, through: 0, by: -1) {
    for i in 0...j
    {
        //Comparing the numbers that are next to each other in the array (e.x. if item in index 0 is greater than item in index 1)
        if numbers[i] > numbers[i + 1]  {
            
            //Setting the first index to the temporary value, and move the second index number to the position of first index value.
            let tempValue = numbers[i]
            numbers[i] = numbers[i+1]
            numbers[i+1] = tempValue
        }
    }
}



// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")


