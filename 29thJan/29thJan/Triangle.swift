import Foundation
class Triangle : shape {
    var base : Double
    var height : Double
    var area : Double
    init (base:Double,height:Double,area : Int,CX:Int,CY:Int){
    super.init(centerX : CX, centerY : CY)
    self.base = base
    self.height = height
        
    }
    func areaofTri(){
        area = 0.5 * base * height
    }
}
