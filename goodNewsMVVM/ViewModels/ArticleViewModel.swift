//
//  ArticleViewModel.swift
//  goodNewsMVVM
//
//  Created by Siddhesh Redkar on 2020-04-20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import Foundation


//parent wholeList

struct ArticleListViewModel {
     let articles:[Article]
}

extension ArticleListViewModel{
    
    var numberOfSections:Int{
       return 1
    }
    
    func numberOfRowsInSection(_ section:Int) -> Int{
        return articles.count
  
    }
    
    func articleAtIndex(_ index:Int) -> ArticleViewModel{
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
    
}



//Child single article
struct ArticleViewModel {
    private let article:Article
}


extension ArticleViewModel {
    
    init(_ article:Article) {
        self.article = article
    }
}


extension ArticleViewModel {
    
    var title:String{
        return article.title
    }
    
    var discription:String{
        return article.description
    }
}
