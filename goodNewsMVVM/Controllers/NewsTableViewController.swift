//
//  NewsTableViewController.swift
//  goodNewsMVVM
//
//  Created by Siddhesh Redkar on 2020-04-19.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class NewsTableViewController: UIViewController {
    
    private var articleListVM:ArticleListViewModel!
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        getdata()
        configureViewController()
        configureTableView()
        
        // Do any additional setup after loading the view.
    }
    
    
    private func configureViewController() {
        view.backgroundColor    = .systemBackground
        title                   = "HOT UPDATES"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = UIColor.gray
        
        //navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
      
        
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.frame         = view.bounds
        //tableView.rowHeight     = 100
        tableView.delegate      = self
        tableView.dataSource    = self
        tableView.removeExcessCells()
        tableView.register(ArticleTableViewCell.self, forCellReuseIdentifier: ArticleTableViewCell.reuseID)

    }
    
    
    private func getdata(){
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=ddd9e67889d14bdf9a3d1ef710b0c613")!
        
        WebService().getArticles(url: url) { articles in
            
            if let articles = articles {
                
             self.articleListVM = ArticleListViewModel(articles: articles)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
           
        }
    }
    
    
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension NewsTableViewController:UITableViewDataSource,UITableViewDelegate{
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.articleListVM.numberOfRowsInSection(section)
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: ArticleTableViewCell.reuseID, for: indexPath) as! ArticleTableViewCell
        
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)

        cell.titleLbl.text = articleVM.title
        cell.descriptionLbl.text = articleVM.discription
        
        return cell
        
    }
}
