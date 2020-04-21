//
//  Article.swift
//  goodNewsMVVM
//
//  Created by Siddhesh Redkar on 2020-04-20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import Foundation



struct ArticleList:Decodable {
    
    let articles: [Article]
}


struct Article:Decodable {
    
    let title:String
    let description:String
}
