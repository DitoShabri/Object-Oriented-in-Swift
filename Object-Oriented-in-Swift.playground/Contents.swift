import UIKit


struct Apple {
    let name: String
    let price: Float
}

struct Pork {
    let name : String
    let weight: Float
    let pricePerPound: Float
}

struct Customer {
    let name : String
    let groceries: [Any]
}
 
struct GroceryStore {
    func printReceipt(customer: Customer) {
        
        //implementation is going to print out receipt for grocery items for customer
        
        print("Printing out Receipt For Customor: \(customer.name) ")
        
        var total: Float = 0
        customer.groceries.forEach {(item) in
            if let apple = item as?  Apple{
                print("\(apple.name): \(apple.price)")
                total += apple.price
            } else if let Pork = item as?Pork {
                print("\(Pork.name): Weight \(Pork.weight), Price Per Pound: \(Pork.pricePerPound)")
                total += Pork.weight * Pork.pricePerPound
            }
        }
        print("Total = \(total)")
    }
}

let SteakPork = Pork(name: "Steak Pork", weight: 2.5, pricePerPound: 9.99)
let goldenApple = Apple(name: "Golden Apple", price: 4.99)
let greenApple = Apple(name: "Green Apple", price: 1.99)
let bill = Customer(name: "Vanpan", groceries: [greenApple, goldenApple, SteakPork])
let safeaway = GroceryStore()
safeaway.printReceipt(customer: bill)

