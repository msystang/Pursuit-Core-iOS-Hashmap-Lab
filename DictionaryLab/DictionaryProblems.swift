import Foundation

// Find the most frequently occurring character in a given string

func mostFrequentlyOccurringChar(in str: String) -> Character {
    var myDict = [Character:Int]()
    
    for char in str {
        if myDict.keys.contains(char) {
            if let oldValue = myDict[char] {
                myDict[char] = oldValue + 1
            }
        } else {
            myDict[char] = 1
        }
    }
    
    var largestValue = 0
    var largestValueKey: Character = "a"
    
    for (key, value) in myDict {
        if value > largestValue {
            largestValue = value
            largestValueKey = key
        }
    }
    return largestValueKey
}

// Find the first indicies whose values sum to a given number

func pairSum(arr: [Int], target: Int) -> (Int, Int) {
//    var myDict = [Int:Int]()
//
//    for (index, int) in arr.enumerated() {
//        myDict[index] = int
//    }
//
//    for (index1, int1) in myDict {
//        for (index2, int2) in myDict {
//            if int1 + int2 == target {
//                return (index1, index2)
//            }
//        }
//    }
    
    return (0,0)
}

// Find the second most frequently occurring character in a given string

func secondMostFrequentlyOccurringChar(in str: String) -> Character {
    var myDict = [Character:Int]()
    
    for char in str {
        if myDict.keys.contains(char) {
            if let oldValue = myDict[char] {
                myDict[char] = oldValue + 1
            }
        } else {
            myDict[char] = 1
        }
    }
    
    var largestValueKey: Character = "a"
    var largestValue = 0
    
    for (key, value) in myDict {
        if value > largestValue {
            largestValue = value
            largestValueKey = key
        }
    }
    
    myDict[largestValueKey] = nil
    
    var secondLargestKey: Character = "b"
    var secondLargestValue = 0
    
    for (key, value) in myDict {
        if value > secondLargestValue {
            secondLargestValue = value
            secondLargestKey = key
        }
    }
    return secondLargestKey
}

// https://leetcode.com/problems/ransom-note/

// Given an arbitrary ransom note string and another string containing letters from all
// the magazines, write a function that will return true if the ransom note can be
// constructed from the magazines ; otherwise, it will return false.

// Each letter in the magazine string can only be used once in your ransom note.

// Submit to the leetcode link for more tests

func canConstruct(note: String, from originalLetters: String) -> Bool {
    return false
}


// Return whether or not an input array contains duplicates

func containsDuplicates(arr: [Int]) -> Bool {
    guard !arr.isEmpty else {return false}
    
    var myDict = [Int:Int]()
    
    for num in arr {
        if myDict[num] == nil {
            myDict[num] = 1
        } else {
            myDict[num]! += 1
        }
    }
    
    for (_, count) in myDict {
        if count > 1 {
            return true
        }
    }
    return false
}

// Find all values that appear exactly once in a given array of Strings

func uniqueValues(in arr: [String]) -> [String] {
    
    
    return []
}

// Sort a given array by how often each term appears

func sortByFrequency(arr: [Int]) -> [Int] {
    return []
}

