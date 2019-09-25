import UIKit

struct Thing {
    var price: Int
    var count: Int
    let product: Product
}

struct Product {
    let name: String
}

enum PostStockError: Error {
    
    case invalidSelection
    case outOfStock
    case insufficientFunds (coinsNeeeded: Int)
}

class PostStock {
    var inventory = [
        "Letter": Thing(price: 5, count: 12, product: Product(name: "Letter")),
        "Big box": Thing(price: 20, count: 20, product: Product(name: "Big box")),
        "Small box": Thing(price: 10, count: 0, product: Product(name: "Small box"))
    ]

    var coins = 0

    func post(thingNamed name: String) throws -> Product? {
        guard let thing = inventory[name] else {
            throw PostStockError.invalidSelection
        }
        guard thing.count > 0 else {
            throw PostStockError.outOfStock
        }
        guard thing.price <= coins else {
            throw PostStockError.insufficientFunds(coinsNeeeded: thing.price - coins)
        }
        
        coins -= thing.price
        var newThing = thing
        newThing.count -= 1
        inventory[name] = newThing
        return newThing.product
    }
}
let postStock = PostStock()

do {
    let order1 = try postStock.post(thingNamed: "Parcel post")
} catch PostStockError.invalidSelection {
    print ("Товар не существует")
} catch PostStockError.insufficientFunds(let coinsNeeded) {
    print("Недостаточно средств. Необходимо довнести \(coinsNeeded) монет")
} catch let error {
    print(error.localizedDescription)
}
