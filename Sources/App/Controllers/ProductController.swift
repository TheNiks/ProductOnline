//
//  ProductController.swift
//  
//
//  Created by Nikunj Modi on 11/05/22.
//

import Foundation
import Vapor

struct ProductController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.on(APIEndPoint.Products.getProducts, use: getAllProduct)
    }
    
    func getAllProduct(request: Request) throws -> Products {
        do {
            let productList = try ProductStorage().getAllProducts()
            return productList
        } catch {
            throw MyError.productsNotFound
        }
    }
}
