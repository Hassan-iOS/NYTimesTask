//
//  ArticleViewModel.swift
//  NYTimes
//
//  Created by Hassan Mostafa on 12/7/20.
//  Copyright © 2020 Hassan Mostafa. All rights reserved.
//

import UIKit

class ArticleViewModel: NSObject {

    var competionBlock: ViewModelCompletionBlock?
    var articleDidSelect: ArticleDidSelect?

    var articles = [Article]()
    
    override init() {
        super.init()
    }
    
    //To get the list of articles
    func getArticlesFromNYTimes() {

        DataManager.getNYTimesArticles(.seven) {[weak self] (result, error) in
            guard error == nil, let results = result as? [Article] else {
                self?.competionBlock?(self, nil)
                return
            }
            self?.articles = results
            self?.competionBlock?(self, nil)
        }
    }
}

//MARK: - UITableViewDelegate and UITableViewDataSource
extension ArticleViewModel: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ArticleMasterCell.identifier, for: indexPath) as? ArticleMasterCell else { return UITableViewCell() }
        cell.article = articles[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        articleDidSelect?(articles[indexPath.row], indexPath.row)
    }
}
