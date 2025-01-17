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
    var myDict = [Int:Int]()

    for (index1, num1) in arr.enumerated() {
        let num2 = target - num1
        if let index2 = myDict[num2] {
            return (index2, index1)
        }
        myDict[num1] = index1
    }
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
    var myDict = [Character:Int]()
    
    for char in note {
        if myDict[char] == nil {
            myDict[char] = 1
        } else {
            myDict[char]! += 1
        }
    }
    
    for char in originalLetters {
        if let count = myDict[char] {
            if count > 1 {
                myDict[char] = count - 1
            } else {
                myDict[char] = nil
            }
        }
    }
    return myDict.count == 0
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
    guard !arr.isEmpty else { return [] }
    
    var myDict = [String:Int]()
    var answer = [String]()
    
    for str in arr {
        if myDict[str] == nil {
            answer.append(str)
            myDict[str] = 1
        }
    }
    
    return answer
    
}

// Sort a given array by how often each term appears

func sortByFrequency(arr: [Int]) -> [Int] {
    guard !arr.isEmpty else { return [] }

    var myDict = [Int:Int]()
    var answer = [Int]()
    
    for int in arr {
        if myDict[int] == nil {
            myDict[int] = 1
        } else {
            myDict[int]! += 1
        }
    }
    
    while myDict.count > 0 {
        var countKey: Int?
        var count: Int = 0
        
        for (int, freq) in myDict {
            if freq > count {
                count = freq
                countKey = int
            }
        }
        
        let range = 1...count
        
        for _ in range {
            answer.append(countKey!)
        }
        
        myDict.removeValue(forKey: countKey!)
        
        countKey = nil
        count = 0
    }
   return answer
}

