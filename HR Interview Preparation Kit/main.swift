//
//  main.swift
//  HR Interview Preparation Kit
//
//  [The HackerRank Interview Preparation Kit](https://www.hackerrank.com/interview/interview-preparation-kit)
//
//  Created by Nahuel Diaz on 05/05/2020.
//  Copyright © 2020 Nahuel Diaz. All rights reserved.
//


import Foundation

let warmupChallenge: WarmUPChallenge = WarmUPChallenge()

print(warmupChallenge)
print(warmupChallenge.sockMerchant(n: 7, ar: [1,2,1,2,1,3,2]))
print(warmupChallenge.sockMerchant(n: 9, ar: [10,20,20,10,10,30,50,10,20]))

let arrayChallenge: ArrayChallenge = ArrayChallenge()
arrayChallenge.hourglassSum(arr: [[1,1,1,0,0,0],
                                  [0,1,0,0,0,0],
                                  [1,1,1,0,0,0],
                                  [0,0,2,4,4,0],
                                  [0,0,0,2,0,0],
                                  [0,0,1,2,4,0]])

arrayChallenge.minimumBribes(q: [5,1,2,3,7,8,6,4])
arrayChallenge.minimumBribes(q: [1,2,5,3,7,8,6,4])
