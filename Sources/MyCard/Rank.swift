//
//  Rank.swift
//  MyCard
//
//  Created by 徐小荣 on 2024/10/11.
//

public enum Rank: Int, CaseIterable {
    case two = 2
    case three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}


// MARK: - Comparable

extension Rank: Comparable {
    public static func <(lhs: Rank, rhs: Rank) -> Bool {
        switch (lhs, rhs) {
        case (_, _) where lhs == rhs:
            return false
        case (.ace, _):
            return false
        default:
            return lhs.rawValue < rhs.rawValue
        }
    }
}

// MARK: - CustomStringConvertible

extension Rank: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ace: return "A"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        default:
            return "\(rawValue)"
        }
    }
}

