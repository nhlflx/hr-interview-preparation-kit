//
//  WarmUPChallenge.swift
//  HR Interview Preparation Kit
//
//  [WarmUPChallenge](https://www.hackerrank.com/interview/interview-preparation-kit/warmup/challenges)
//
//  Created by Nahuel Diaz on 05/05/2020.
//  Copyright © 2020 Nahuel Diaz. All rights reserved.
//

import Foundation

class WarmUPChallenge {
    
    /// [Sock Merchant](https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup)
    /// - Parameters:
    ///   - n: The number of socks in the pile
    ///   - ar:The colors of each sock
    /// - Returns: an integer representing the number of matching pairs of socks that are available.
    func sockMerchant(n: Int, ar: [Int]) -> Int {
        var pairs = 0
        if n > 1{
            var counts:[Int:Int] = [:]
            for color in ar {
                counts[color] = (counts[color] ?? 0) + 1
                if (counts[color]! % 2 == 0) {
                    pairs += 1
                }
            }
        }
        return pairs
    }
    
    /// [Counting Valleys](https://www.hackerrank.com/challenges/counting-valleys/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup)
    /// - Parameters:
    ///   - n: the number of steps Gary takes
    ///   - s: a string describing his path
    /// - Returns: the number of valleys Gary traversed.
    func countingValleys(n: Int, s: String) -> Int {
        var level = 0
        var preLevel = 0
        var valleys = 0
        for step in s {
            preLevel = level
            if step == "U"{
                level += 1
            }else{
                level -= 1
            }
            if level < 0 && preLevel >= 0{
                valleys += 1
            }
        }
        return valleys
    }
    
    /// [Jumping on the Clouds](https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup)
    /// - Parameter c: an array of binary integers
    /// - Returns: the minimum number of jumps required, as an integer.
    func jumpingOnClouds(c: [Int]) -> Int {
        var jumps = 0
        let clouds = c.count
        var jump = 0
        while jump < clouds-1 {
            jump += (jump + 2) < clouds && c[jump+2] == 0 ? 2 : 1
            jumps += 1
        }
        return jumps
    }
    
    
    /// [Repeated String](https://www.hackerrank.com/challenges/repeated-string/problem?h_l=interview&page=5&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup)
    /// - Parameters:
    ///   - s: a string to repeat
    ///   - n: the number of characters to consider
    /// - Returns: an integer representing the number of occurrences of 'a' in the prefix of length  in the infinitely repeating string.
    func repeatedString(s: String, n: Int) -> Int {
        
        var count = s.filter({$0 == "a"}).count
        let nmod = n % s.count
        if (n > s.count) {
            let fit = n / s.count
            let aSmallCount =  s.prefix(nmod).filter({$0 == "a"}).count
            count = count * fit + aSmallCount
        }
        if (n < s.count){
            let aSmallCount =  s.prefix(nmod).filter({$0 == "a"}).count
            count = aSmallCount
        }
        
        return count
        
    }
}
