import UIKit

enum Engine {
    case start, stop
}

enum Transmission {
    case manual, automat
}

enum Door {
    case open, close
}

enum Window {
    case open, close
}

enum Trunk {
    case load, unload
}

enum Spoiler: String {
    case release = "выпущен", remove = "убран"
}

class Auto {
    let color: UIColor
    let transmission: Transmission
    var engine: Engine
    var doorState: Door
    var windowState: Window
    
    init(color: UIColor, engine: Engine, transmission: Transmission, doorState: Door, windowState: Window) {
        self.color = color
        self.engine = engine
        self.transmission = transmission
        self.doorState = doorState
        self.windowState = windowState
    }
}

class CargoAuto: Auto {
    var trunkState: Trunk
    
    init(color: UIColor, engine: Engine, transmission: Transmission, doorState: Door, windowState: Window, trunkState: Trunk) {
        self.trunkState = trunkState
        super.init(color: color, engine: engine, transmission: transmission, doorState: doorState, windowState: windowState)
    }
    
    func loadTrunk() {
        trunkState = .load
    }
    
    func unloadTrunk() {
        trunkState = .unload
    }
}

class WarningCargoAuto: CargoAuto {
    
    override func loadTrunk() {
        super.loadTrunk()
        print("Вызываем грузчиков, требуется загрузить грузовой автомобиль")
    }
}

var someAuto1 = Auto(color: .black, engine: .start, transmission: .manual, doorState: .close, windowState: .open)
var someAuto2 = CargoAuto(color: .black, engine: .start, transmission: .manual, doorState: .close, windowState: .open, trunkState: .load)

class SportAuto: Auto {
    var spoilerState: Spoiler
    
    init(color: UIColor, engine: Engine, transmission: Transmission, doorState: Door, windowState: Window, spoilerState: Spoiler) {
        self.spoilerState = spoilerState
        super.init(color: color, engine: engine, transmission: transmission, doorState: doorState, windowState: windowState)
    }
    
    func releaseSpoiler() {
        spoilerState = .release
        print("Спойлер \(spoilerState.rawValue) выпущен")
    }
    
    func removeSpoiler() {
        spoilerState = .remove
        print("Спойлер \(spoilerState.rawValue) убран")
    }
}

class SpoilerSportAuto: SportAuto {
    
    func releaseSpolier() {
        print("Запрещается трогать спойлер!!!")
    }
}

var someAuto3 = SportAuto(color: .black, engine: .start, transmission: .manual, doorState: .close, windowState: .open, spoilerState: .release)

someAuto3.releaseSpoiler()
someAuto3.removeSpoiler()


