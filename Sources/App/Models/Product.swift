//
//  File.swift
//  
//
//  Created by Soyombo Mantaagiin on 12.02.2023.
//

import Fluent
import Vapor

final class Product: Model, Content {
    
    static var schema: String = "products"
    
    @ID var id: UUID?
    @Field(key: "title") var title: String
    @Field(key: "description") var description: String
    @Field(key: "price") var price: Int
    @Field(key: "category") var category: String
    @Field(key: "image") var image: String
    
    init() {}
    
    init(id: UUID? = nil, title: String, description: String, price: Int, category: String, image: String) {
        self.id = id
        self.title = title
        self.description = description
        self.price = price
        self.category = category
        self.image = image
    }
    
}
