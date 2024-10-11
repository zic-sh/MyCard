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


// MARK: - Comparable
extension MyCard: Comparable {
    public static func <(lhs: MyCard, rhs: MyCard) -> Bool {
        return lhs.rank == rhs.rank ? lhs.suit < rhs.suit : lhs.rank < rhs.rank
    }
}

// MARK: - CustomStringConvertible
extension MyCard: CustomStringConvertible {
    public var description: String {
        return "\(suit) \(rank)"
    }
}

