import UIKit

enum Door: String {
    case open = "открыть", close = "закрыть"
}
enum Engine: String {
    case start = "запущен", stop = "заглушен"
}
enum Window: String {
    case open = "открыть", close = "закрыть"
}
enum Trunk: String {
    case load = "загрузить", unload = "разгрузить"
}
enum Spoiler: String {
    case release = "выпущен", remove = "убран"
}

protocol CarProtocol {
    //func openDoor() -> String
    //func startEngine() -> String
}

class Cars: CarProtocol {
    var doorState: Door
    var windowState: Window
    var engineState: Engine
    func openDoor() {
        doorState = .open
        print("Дверь \(doorState.rawValue) открыта")
    }
    func startEngine() {
        engineState = .start
        print("Двигатель \(engineState.rawValue) запущен")
    }
    
    init(doorState: Door, windowState: Window, engine: Engine) {
        self.doorState = doorState
        self.windowState = windowState
        self.engineState = engine
    }
}
class CargoAuto: Cars {
    var trunkState: Trunk
    init(doorState: Door, windowState: Window, engine: Engine, trunkState: Trunk) {
        self.trunkState = trunkState
        super.init(doorState: doorState, windowState: windowState, engine: Engine)
    }
    func loadTrunk() {
        trunkState = .load
        print("Загружен")
    }
    func unloadTrunk() {
        trunkState = .unload
        print("Разгружен")
    }
}
class SportAuto: Cars {
    var spoilerState: Spoiler
    init(doorState: Door, windowState: Window, engine: Engine, spoilerState: Spoiler) {
        self.spoilerState = spoilerState
        super.init(doorState: doorState, windowState: windowState, engine: Engine)
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
