//
//  ViewController.swift
//  TableVIew
//
//  Created by 송영우 on 2021/05/22.
//

import UIKit

struct Model {
    let name: String
    let age: Int
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    private let itemList: [Model] = [
        .init(name: "린생1", age: 1),
        .init(name: "린생2", age: 2),
        .init(name: "린생3", age: 3),
        .init(name: "린생4", age: 4),
        .init(name: "린생5", age: 5),
        .init(name: "린생6", age: 6)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Result에서 delegate에서 명령한것들을 여기에도 처리해줘야함
        // 그건 밑에 명령줄
        
//        tableView.reloadData()
        
        title = "아이템 리스트"
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let resultVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ResultViewController") as? ResultViewController else {
            return
        }
        resultVC.model = self.itemList[indexPath.row]
        
        navigationController?.pushViewController(resultVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")
                as? TableViewCell else {
            return UITableViewCell()
        }
        let model = self.itemList[indexPath.row]
        
        cell.label_name.text = model.name
        cell.labelAge.text = "\(model.age)"
        
        return cell
    }
    
    
    //command + a -> control + i
    
    
}

