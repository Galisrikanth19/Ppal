//
//  AddCardViewModel.swift
//  Created by GaliSrikanth on 14/11/24.

import Foundation

class AddCardViewModel: ObservableObject {
  @Published var responseModel: AddCardResponseModel?
  @Published var existingCardsArray: [ExistingCard] = []

  func getAddCardData() {
    responseModel = AppUtility.getJsonObject(FromFile: "AddCard")
    existingCardsArray = responseModel?.existingCards ?? []
  }
}
