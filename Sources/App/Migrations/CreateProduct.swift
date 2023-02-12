//
//  File.swift
//  
//
//  Created by Soyombo Mantaagiin on 12.02.2023.
//

import Fluent
import Vapor

struct CreateProduct: Migration {
    
    func prepare(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("products")
            .id()
            .field("title", .string, .required)
            .field("description", .string, .required)
            .field("price", .int, .required)
            .field("category", .string, .required)
            .field("image", .string, .required)
            .create()
    }
    
    func revert(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("products").delete()
    }
    
    
}
