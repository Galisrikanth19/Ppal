//
//  AppUtility.swift
//  Created by GaliSrikanth on 21/10/24.

import Foundation

struct AppUtility {
    static func getJsonObject<T: Codable>(FromFile fileName: String) -> T? {
        guard let filePath = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            return nil
        }
        
        do {
            let rawData = try Data(contentsOf: filePath)
            let jsonObject = try JSONDecoder().decode(T.self, from: rawData)
            return jsonObject
        } catch {
            return nil
        }
    }
}
