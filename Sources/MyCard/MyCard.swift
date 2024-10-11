// The Swift Programming Language
// https://docs.swift.org/swift-book


public struct MyCard : Equatable, Hashable  {
    let rank: Rank
    let suit: Suit

    public init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }

}
