//: Playground - noun: a place where people can play
//: Playground - noun: a place where people can play
import UIKit

struct Card {
    var color: String
    var roll: Int {
        
        get{
            if (self.color == "Blue") {
                return Int(arc4random_uniform(2) + 1)
            }
            else if (self.color == "Red") {
                return Int(arc4random_uniform(2) + 3)
            }
            else{
                return Int(arc4random_uniform(2) + 5)
            }
        }
    }
}

class Deck {
    var cards = [Card]()
    init(){
        for _ in 1...10 {
            let card = Card(color: "Blue")
            cards.append(card)
        }
        for _ in 1...10 {
            let card = Card(color: "Red")
            cards.append(card)
        }
        for _ in 1...10 {
            let card = Card(color: "Green")
            cards.append(card)
        }
    }
    func removeTop() -> String {
        let deck_top = cards.count - 1
        let temp = cards[deck_top]
        cards.remove(at: deck_top)
        print(temp)
        return temp.color
    }
    func isEmpty() -> Bool {
        if cards.count > 1 {
            print("false")
            return false
        }
        else {
            print("true")
            return true
        }
    }
    func shuffle() {
        for _ in 0...15 {
            let random = Int(arc4random_uniform(UInt32(cards.count)))
            let random2 = Int(arc4random_uniform(UInt32(cards.count)))
            if random != random2 {
                swap(&cards[random], &cards[random2])
            }
        }
    }
}
var player_draw = Deck()

class Player {
    var name = String()
    
    var hand = [String]()
    
    func draw() -> String {
        let draw_card = player_draw.removeTop()
        self.hand.append(draw_card)
        return draw_card
    }
    func rolldice() -> Int {
        let roll: Int = Int(arc4random_uniform(6) + 1)
        return roll
    }
    var card_pull = [Card]()
    func matchingCards(roll: Int, color: String) -> Int {
        var count: Int = 0
        for i in card_pull {
            if (roll == i.roll && color == i.color){
                count += 1
            }
        }
        print(count)
        return(count)
    }
}

Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
Player().draw()
