//
//  ResultViewController.swift
//  TableVIew
//
//  Created by 송영우 on 2021/05/22.
//

import UIKit

//소주 삭제해야하니까 여기에도 delegate 만들기

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    
    var model: Model?
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        title = "아이템 상세"
        
        lblName.text = model?.name
        lblAge.text = "\(model?.age ?? 0)"
        
    }
    
}
