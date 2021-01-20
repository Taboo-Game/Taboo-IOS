//
//  Test.swift
//  Taboo-Game
//
//  Created by Furkan Kaan Ugsuz on 20/01/2021.
//

import Foundation
var testArray : [Test]?

class Test {
    var test1 : String
    init(test1: String) {
        self.test1 = test1
    }
}

func addTest()
{
    testArray?.append(Test(test1: "yeay"))
}
