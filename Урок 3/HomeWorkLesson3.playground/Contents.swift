import UIKit

enum Engine {
    case start, stop
}

enum Door {
    case open, close
}

enum Windows {
    case open, close
}

enum Trunk {
    case full, empty
}

struct passengersAuto {
    var mark: String = " "
    let year: Int = 2019
    let bootVolume: Int = 200
    let engine: Engine
    var windowState: Windows
    var trunkState: Trunk
    
    mutating func closeWindow () {
        self.windowState = .close
    }
    mutating func openWindow () {
        self.windowState = .open
    }
    
    func description() {
        print ("Марка авто \(mark), год выпуска \(year) с объемом багажника \(bootVolume)")
    }
    //init(nameOfAuto: String) {
       // self.mark = nameOfAuto
    //}
}

var mercedes = passengersAuto(mark: "Mercedes", engine: .start, windowState: .close, trunkState: .empty)

mercedes.description()

var cargoAuto = passengersAuto(mark: "Actros", engine: .stop, windowState: .open, trunkState: .full)
print(cargoAuto.mark)

cargoAuto.mark = "Actros"

cargoAuto.description()


