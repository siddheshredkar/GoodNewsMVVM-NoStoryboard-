//
//  NewsTableViewController.swift
//  goodNewsMVVM
//
//  Created by Siddhesh Redkar on 2020-04-19.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       configureViewController()
        // Do any additional setup after loading the view.
    }
    
    
    private func configureViewController() {
        view.backgroundColor    = .systemBackground
        title                   = "HOT UPDATES"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = UIColor.gray
        //navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        
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
