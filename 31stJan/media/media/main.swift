import Foundation

class Media {
    var name : String
    init(name:String){
        self.name = name
    }
}
class Movie :  Media{
    var Director : String
    init(name : String , Director : String) {
        self.Director = Director
        super.init(name: name)
        
    }
}
class Song : Media{
    var artist : String
    init(name:String,artist:String){
        self.artist = artist
        super.init(name: name)
        
    }
}
var Library = [  Movie(name: "ABC", Director: "A11"), Song(name: "XYZ", artist: "B11"),
                 Movie(name: "PQR", Director: "C22"),Movie(name: "NNN", Director: "LLL")
 ]
var mcount = 0
var scount = 0
//Type Checking
for item in Library {
    if item is Movie{
        mcount += 1
    }
    if item is Song {
        scount += 1
    }
}
print("--------------------------------")
//Type casting without optional binding
print("Library has \(mcount) Movies and \(scount) Songs")
for item in Library {
    let m = item as? Movie
    print("\(m?.name) \(m?.Director)")
}
print("----------------------------")
//Type casting with Optional Binding
for i in Library{
    if let m = i as? Movie{
        print("\(m.name) \(m.Director)")
    }
}
print("--------------------------------")
//
for i in Library {
    if i is Movie {
        let m = i as! Movie
        print("\(m.name) \(m.Director)")
    }
    if i is Song {
        let s = i as! Song
        print("\(s.name) \(s.artist)")
    }
}
print("--------------------------------------------")
//AnyObjects which will accept only object of diiferent classes
var array = [AnyObject ]()
var m1 = Movie(name: "KKK", Director: "123")
var s = Song(name: "HHH", artist: "ARR")
var m2 = Media(name: "JJJ")
array.append(m1)
array.append(s)
array.append(m2)
print(array)
//not required to print
for i in array {
    if i is Movie {
        let m = i as! Movie
        print("\(m.name) \(m.Director)")
    }
    if i is Song {
        let s = i as! Song
        print("\(s.name) \(s.artist)")
    }
}
print("------------------------")
//any
var anyArray = [Any]()
anyArray.append(33.22122)
anyArray.append("Bitcode")
anyArray.append(3701)
print(anyArray)




