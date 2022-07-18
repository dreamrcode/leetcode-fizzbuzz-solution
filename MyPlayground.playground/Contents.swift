/*
 LeetCode Link: https://leetcode.com/problems/fizz-buzz/
 
 Given an integer n, return a string array answer (1-indexed) where:

 answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
 answer[i] == "Fizz" if i is divisible by 3.
 answer[i] == "Buzz" if i is divisible by 5.
 answer[i] == i (as a string) if none of the above conditions are true.
 
 Example 1:
 Input: n = 3
 Output: ["1","2","Fizz"]
 
 Example 2:
 Input: n = 5
 Output: ["1","2","Fizz","4","Buzz"]
 
 Example 3:
 Input: n = 15
 Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
 
 Constraints:
 1 <= n <= 10^4
 */

import UIKit

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        
        // declare the result array, as an empty array
        var result = [String]()
    
        // check if n is between constrains, if it isn't, return the empty array.
        if n < 1 || n >= 10_000 {
            return result
        }
        
        // for every index between 1 and n...
        for i in 1...n {
            
            // check if they are divisible by 3 and 5
            let isDivisibleBy3 = i % 3 == 0
            let isDivisibleBy5 = i % 5 == 0
            
            if isDivisibleBy3 && isDivisibleBy5 {
                result.append("FizzBuzz")
            } else if isDivisibleBy3 {
                result.append("Fizz")
            } else if isDivisibleBy5 {
                result.append("Buzz")
            } else {
                result.append("\(i)")
            }
        }
        
        // return the result array
        return result
    }
}

// Test Solution
let solution = Solution()
solution.fizzBuzz(3)
solution.fizzBuzz(5)
solution.fizzBuzz(15)
