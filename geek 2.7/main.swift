//
//  main.swift
//  geek 2.7
//
//  Created by Айбек Шакиров on 3/11/22.
//

import Foundation
/*
 Задание: расширить класс Array, где функция распечатывает элементы в виде массива со сложным элементом любого типа. Например: [(индекс: 0, “значение: 99”), (индекс: 1, “значение: 22”), (индекс: 1, “значение: 30”) ]. Cо стрингом: [(индекс: 0, “значение: banan”), (индекс: 1, “значение: apple”), (индекс: 1, “значение: cat”) ]
 */
struct ArrayElement<T> {
    var index: T
    var element: T
    
}
extension Array{
    func printArrayFullInfo(array: Array) {
        var resultArray = [ArrayElement<Any>]()

        for (index, value) in array.enumerated() {
            resultArray.append(ArrayElement(index: index, element:value))
                               }
        print(resultArray) 
   }
}
var numbers = [99,22,30]
numbers.printArrayFullInfo(array: numbers)
var words = ["banan","apple", "cat"]
words.printArrayFullInfo(array: words)

  
