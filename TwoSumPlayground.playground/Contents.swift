//: Playground - noun: a place where people can play

import UIKit

var array = [1,2,4,7,11,15]
var filterArray : [Int] = []
var target = 9
var filterDict : [Int:Int] = [:]

func twoSum (array: [Int])  {
    //step 1 : 篩選比target小的數值，(1)並將這數值建立Dictionary<數值：原陣列索引> (2)過濾後資料建立新陣列
    for index in 0..<array.count {
        if target >= array[index] {
            filterDict[array[index]] = index
            filterArray.append(array[index])
        }
    }

    //step 2 : 新陣列資料兩兩相加比對target
    NestedIf :
    for i in 0..<filterArray.count {
        for j in 0..<filterArray.count {
            if i != j {
                if filterArray[i]+filterArray[j] == target {
                    print("index1 = \(filterDict[filterArray[i]]! + 1)")
                    print("index2 = \(filterDict[filterArray[j]]! + 1)")
                    break NestedIf
                }
            }
        }
    }
}

twoSum(array)
