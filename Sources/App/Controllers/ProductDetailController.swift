//
//  File.swift
//  
//
//  Created by Nikunj Modi on 12/05/22.
//

import Foundation
import Vapor

struct ProductDetailController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.on(APIEndPoint.ProductDetail.getProductDetail, use: getProductDetail)
    }
    
    func getProductDetail(req: Request) throws -> Product {
        guard let id = try? req.parameters.require("ProductId"), let proId = Int(id) else {
            throw MyError.productsNotFound
        }
        
        do {
            let response = try ProductStorage().getProductDetail(proId: proId)
            return response
        } catch {
            throw MyError.productNotValid(proId)
        }
    }
}
