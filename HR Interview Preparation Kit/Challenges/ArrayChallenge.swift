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
    
}
