//
//  File.swift
//  
//
//  Created by Nikunj Modi on 12/05/22.
//

import Foundation
import Vapor

enum MyError {
    case productsNotFound
    case productNotValid(Int)
}

extension MyError: AbortError {
    var reason: String {
        switch self {
        case .productsNotFound:
            return "Products are not found."
        case .productNotValid(let proId):
            return "Product is not found: \(proId)."
        }
    }

    var status: HTTPStatus {
        switch self {
        case .productsNotFound:
            return .notFound
        case .productNotValid:
            return .badRequest
        }
    }
}
