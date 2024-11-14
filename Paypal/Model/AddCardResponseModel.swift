//
//  AddCardResponseModel.swift
//  Created by GaliSrikanth on 09/11/24.

import Foundation

struct AddCardResponseModel: Codable {
    let exploreNewWays: ExploreNewWays
    let existingCards: [ExistingCard]
}

struct ExistingCard: Codable {
    let title, subTitle, image: String
}

struct ExploreNewWays: Codable {
    let payWithACard, applyForRatenzahlung: ApplyForRatenzahlung
}

struct ApplyForRatenzahlung: Codable {
    let title, image: String
}
