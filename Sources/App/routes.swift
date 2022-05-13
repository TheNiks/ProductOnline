import Vapor

func routes(_ app: Application) throws {
    let api = app.grouped("api")
    try api.grouped(APIEndPoint.Products.root.toPathComponent).register(collection: ProductController())
    try api.grouped(APIEndPoint.ProductDetail.root.toPathComponent).register(collection: ProductDetailController())
}
