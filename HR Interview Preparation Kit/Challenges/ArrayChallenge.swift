//
//  ArrayChallenge.swift
//  HR Interview Preparation Kit
//
//  [Arrays](https://www.hackerrank.com/interview/interview-preparation-kit/arrays/challenges)
//
//  Created by Nahuel Diaz on 06/05/2020.
//  Copyright © 2020 Nahuel Diaz. All rights reserved.
//

import Foundation

class ArrayChallenge {
    
    /// [2D Array - DS](https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays)
    /// - Parameter arr: hourglasses representation
    /// - Returns: the maximum hourglass sum
    func hourglassSum(arr: [[Int]]) -> Int {
        var max = -63
        for i in 0...arr.count-3 {
            for j in 0...arr.count-3 {
                let top: Int = arr[i][j]+arr[i][j+1]+arr[i][j+2]
                let mid: Int = arr[i+1][j+1]
                let botton:Int = arr[i+2][j]+arr[i+2][j+1]+arr[i+2][j+2]
                let hourglass = top + mid + botton
                if hourglass > max {
                    max = hourglass
                }
            }
        }
        return max
    }
    
    
    
    /// [New Year Chaos](https://www.hackerrank.com/challenges/new-year-chaos/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays)
    /// - Parameter q: an array of integers
    /// - Returns: print an integer representing the minimum number of bribes necessary, or Too chaotic if the line configuration is not possible.
    func minimumBribes(q: [Int]) -> Void {
        var index = 0
        var brides = 0
        var expectedA = index + 1
        var expectedB = index + 2
        var expectedC = index + 3
        while index < q.count && brides != -1 {
            if (q[index] == expectedA){
                expectedA = expectedB
                expectedB = expectedC
                expectedC += 1
            }else if (q[index] == expectedB){
                brides += 1
                expectedB = expectedC
                expectedC += 1
            } else if (q[index] == expectedC){
                brides += 2
                expectedC += 1
            } else {
                brides = -1
            }
            index += 1
        }
        let response = (brides > -1) ? String(brides) : "Too chaotic"
        print(response)
    }
    
    /// [Left Rotation](https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays)
    /// - Parameters:
    ///   - a: an array of integers
    ///   - d: an integer , the number of rotations.
    /// - Returns: the updated array, after performing  left rotations.
    func rotLeft(a: [Int], d: Int) -> [Int] {
        
        var aplus = a
        var rotate:[Int] = []
        for _ in 0...d-1 {
            rotate.append(aplus.removeFirst())
        }
        aplus.append(contentsOf: rotate)
        
        return aplus

    }

    
}
