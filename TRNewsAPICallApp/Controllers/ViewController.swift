//
//  ViewController.swift
//  TRNewsAPICallApp
//
//  Created by Mahmut Senbek on 5.12.2022.
//
import SDWebImage
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var response : Article?
    var articleArray = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        jsonParse()
       // view.backgroundColor = .red
        self.tableView.reloadData()
        title = "Türkiyeden Haberler"
    }


}

//MARK: - TableView
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return articleArray.count
       
        
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
            let news = articleArray[indexPath.row]
           // print(news)
            cell.newsSource.text = news.author
            print(news.articleDescription as Any)
            cell.newsLabel.text = news.title
            print(news.urlToImage)
            cell.newsImage.sd_setImage(with: URL(string: news.urlToImage))
           
            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let goToUrl = articleArray[indexPath.row].url
        UIApplication.shared.open(URL(string: goToUrl)!)
    }
  
    }

    
    //MARK: - JSON PARSE
    extension ViewController {
        
        func jsonParse() {
            
            let url = URL(string: "https://newsapi.org/v2/top-headlines?country=tr&apiKey=1ea9c2d2fbe74278883a8dc0c9eb912f")
            
            let task =  URLSession.shared.dataTask(with: url!) { data, response, error in
                
                if error != nil {
                    print(error as Any)
                }else {
                    
                    do {
                        let result = try JSONDecoder().decode(Response.self, from: data!)
                      //  let result2 = try JSONDecoder().decode(Article.self, from: data!)
                        let articles = result.articles
                        let author = articles
                        self.articleArray = author
                     //   print(author)
                       // print(data as Any)
                        print("success")
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                       
                        
                    }catch {
                        print(error)
                    }
                    
                    
                }
        
            }
            task.resume()
        
        }
    
    }
    
/*
extension UIImageView {
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}

*/
