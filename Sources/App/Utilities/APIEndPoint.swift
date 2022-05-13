//
//  APIEndPoint.swift
//  
//
//  Created by Nikunj Modi on 11/05/22.
//

import Foundation
import Vapor
import Network

public struct RouteModel {
    public enum HTTPMethod: String {
        case GET
        case POST
        case PUT
        case PATCH
        case DELETE
    }
    
    public let root: [String]
    public let method: RouteModel.HTTPMethod
    public let subPath: [String]
    
    var httpMethod: Vapor.HTTPMethod { .init(rawValue: method.rawValue) }
    var rootComponents: [Vapor.PathComponent] { root.toPathComponent }
    var pathComponents: [Vapor.PathComponent] { subPath.toPathComponent }
}

public struct APIEndPoint {
    
    public struct Products {
        public static let root = ["products"]
        public static let getProducts = RouteModel(root: root, method: .GET, subPath: [])
    }
    
    public struct ProductDetail {
        public static let root = ["productDetail"]
        public static let getProductDetail = RouteModel(root: root, method: .GET, subPath: [":ProductId"])
    }
}

extension Array where Element == String {
    var toPathComponent: [PathComponent] { self.map(PathComponent.init) }
}

extension RoutesBuilder {
    @discardableResult
    public func on<Response>(_ routeDefinition: RouteModel, use closure: @escaping (Request) throws -> Response) -> Route where Response: ResponseEncodable {
        self.on(routeDefinition.httpMethod, routeDefinition.pathComponents, use: closure)
    }
}
