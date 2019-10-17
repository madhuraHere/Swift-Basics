import Foundation
class Circle: shape{
    var radius : Int
    init(radius : Int,cX : Int,cY : Int){
        self.radius = radius
        super.init(centerX: cX,centerY : cY)
    }
    func displayCircle() {
        print("Radius is \(radius)")
        super.displayShape()
    }
    override func draw() {
        print("Circle Class Draw")
        
    }

}
