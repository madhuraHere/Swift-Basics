import Foundation
//extension
extension String {
  
    func replacingString(s1 : String, s2 : String)->String{
        return replacingOccurrences(of: s1, with: s2)
    }
   static func mergeString(s1:String,s2:String)->String{
        return s1+s2
    }
   mutating func replaceNumbersfromString1(){
        var arr = ["0","1","2","3","4","5","6","7","8","9"]
        for j in arr{
        self = self.replacingOccurrences(of: j, with: "")
        }
    }
}
var str1 = "Bitcode"
var res1 = str1.replacingString(s1: "t", s2: "T")
print(res1)

var str2 = "Pvt Ltd"
var res2 = String.mergeString(s1: str1, s2: str2)
print(res2)

var str3 = "Bi110tCod45e"
str3.replaceNumbersfromString1()
print(str3)
