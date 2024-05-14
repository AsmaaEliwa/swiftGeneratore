//
//  caserCipher.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 14/05/2024.
//

import Foundation
// Back in the good old days, you used to be able to write a darn near
// uncrackable code by simply taking each letter of a message and incrementing
// it by a fixed number, so "abc" by 2 would look like "cde", wrapping around
// back to "a" when you pass "z".
//
// Write a function, `caesarCipher(str, shift)` that will take a message and an
// increment amount and outputs the encoded message. Assume lowercase and no
// punctuation. Preserve spaces.
//
// The English alphabet, in order, is 'abcdefghijklmnopqrstuvwxyz'
//
// Examples:
// caesarCipher(“abc”, 2) => “cde”
// caesarCipher(“xyz”, 1) => “yza"
func caesarCipher(_ str: String, _ shift: Int) -> String {
    var encryptedString = ""
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    for char in str {
        if let index = alphabet.firstIndex(of: char) {
            var shiftedIndex = alphabet.index(index, offsetBy: shift % alphabet.count ,limitedBy: alphabet.endIndex) ?? alphabet.startIndex
            if char == "z"{
                shiftedIndex = alphabet.startIndex
            }
            encryptedString.append(alphabet[shiftedIndex])
        } else {
            // Handle characters not found in the alphabet
            encryptedString.append(char)
        }
    }
    
    return encryptedString
}

// Example usage:
print(caesarCipher("abc", 2)) // Output: "cde"
print(caesarCipher("xyz", 1)) // Output: "yza"
