//
//  AddCardViewModelTests.swift
//  PaypalTests
//
//  Created by GaliSrikanth on 14/11/24.
//

import XCTest
@testable import Paypal

final class AddCardViewModelTests: XCTestCase {
    var viewModel: AddCardViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = AddCardViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func testPositiveCasesGetAddCardDataForExploreWays() {
        viewModel.getAddCardData()
        
        XCTAssertNotNil(viewModel.responseModel, "responseModel should not be nil after getAddCardData()")
        XCTAssertEqual(viewModel.responseModel?.exploreNewWays.payWithACard.title, "Pay with a card linked to your bank")
        XCTAssertEqual(viewModel.responseModel?.exploreNewWays.payWithACard.image, "")
    }
    
    func testNegitiveCasesGetAddCardDataForExploreWays() {
        viewModel.getAddCardData()
        
        XCTAssertNotEqual(viewModel.responseModel?.exploreNewWays.applyForRatenzahlung.title, "Pay with a card linked to your bank")
        XCTAssertEqual(viewModel.responseModel?.exploreNewWays.applyForRatenzahlung.image, "Ratenzah")
    }
    
    func testPositiveCasesGetAddCardDataForExistingCards() {
        viewModel.getAddCardData()
        
        XCTAssertNotNil(viewModel.responseModel?.existingCards, "Existing cards array should be greater than 0")
        XCTAssertEqual(viewModel.responseModel?.existingCards.first?.title, "Deucth")
        XCTAssertEqual(viewModel.responseModel?.existingCards.last?.subTitle, "card **34")
    }
    
    func testNegitiveCasesGetAddCardDataForExistingCards() {
        viewModel.getAddCardData()
        
        XCTAssertNotEqual(viewModel.responseModel?.existingCards.first?.title, "Franton")
        XCTAssertNotEqual(viewModel.responseModel?.existingCards.last?.image, "")
    }
}
