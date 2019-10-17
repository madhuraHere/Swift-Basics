//
//  main.swift
//  assignment24AN
//
//  Created by Mac on 24/01/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation

print("Hello, World!")

var c2 = {
    (n1 : Int) -> Int in
    return n1 * n1
}
func evenodd (numberc : (Int)->Int)->String {
    
    let res = numberc(5)
    print(res)
    if res%2 == 0 {
        return "Even"
    }
    else {
        return "Odd"
    }
}
var aaa = evenodd(numberc : c2)
print(aaa)

//
var c3 = {
    (n2: Int)->Int in
    return  n2
    
}
func table ( t1: (_ :Int) -> Int ) -> Void {
    var t = t1(10)
    for i in 1...10 {
        print(i * t)
    }
}
table(t1 : c3)


//

var c4 = {
    (n3 : Int,n4 : Int)->(Int,Int) in
    if n3 > n4 {
        return(n4 , n3)
    }
    else {
        return (n3 , n4)
    }
}
func minmax(c5:( Int,Int)->(Int,Int))->Void {
    let resultm = c5(20,50)
    print("Min no is\(resultm.0)")
    for i in resultm.0...resultm.1 {
        print(i)
    }
}
minmax(c5: c4)

//

var closurestr = {
    (s1 : String)->String in
    return s1 + "Hello World"
}
func strconcat(s2:( _ :String)->String)->String {
    let s3 = "Hi"
    var tempstr = s2(s3)
    return tempstr
}
var str_concat = strconcat(s2: closurestr)
print(str_concat)





