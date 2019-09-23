import UIKit

func queue<T>(firstValue: inout T, nextValue: inout T) {
    let firstValue = 1
    var nn =  firstValue + 1
    nn += 1
}

var firstT = 1
var lastT = 99

queue(firstValue: &firstT, nextValue: &lastT)

var n = "Number of Queue"
var w = "Number of window"

queue(firstValue: &n,nextValue: &w)
print("\(n), \(w)")


struct inStack<Filter> {
    var items = [Filter]()
    
    mutating func push(_ item: Filter){
        items.append(item)
    }
    
    mutating func pop() -> Filter {
        return items.removeLast()
    }
    var totalNumber : Int {
        var number = 0
        for filter in numbers {
            number += filter.number
            
        return number
        }
        subscript (filters: Int ...) -> Int {
            var filter = 0
            for i in filters where i < self.filters.count {
                filter += self.filters[i].filter
            }
            return nil
        }
    }
}

var stackOfString = inStack<String>()

stackOfString.push("one")
stackOfString.push("two")
stackOfString.push("three")

print(stackOfString)

stackOfString.pop()

var stackOfInt = inStack<Int>()

stackOfInt.push(1)
stackOfInt.push(2)
stackOfInt.push(3)

print(stackOfInt)
