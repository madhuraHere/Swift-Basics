
import Foundation
class Rectangle : shape {
    var len : Int = 0
    var b : Int = 0
    var area : Int = 0
    init(CX:Int, CY : Int,len :Int,b:Int){
        self.len = len
        self.b = b
        super.init(centerX: CX, centerY: CY)
    }
    func areaofRect (){
        area = len * b
    }
    func paintcost(){
        let mycost = 1000
        let TotalCost = area * mycost
        print("Total cost for area \(area)m is Rs \(TotalCost)")
    }
}
