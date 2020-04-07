//
//  ViewController.swift
//  DragAndDrop(UITableview)
//
//  Created by iOS Developer on 18/02/2020.
//  Copyright © 2020 humanplus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var reorderingRows = ["banana","watermelon","orange","grape","strawberry"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.setEditing(true, animated: true)
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reorderingRows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(reorderingRows[indexPath.row])"
        return cell
    }
    
    //이동되는 셀 스타일 설정.
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return UITableViewCell.EditingStyle.none
    }
    
    //특정셀은 고정시킬 수 있음.
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        if(indexPath.row == 0){
//            return false
//        }
        return true
    }
    
    
    //어디에서 어디로
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let stringToMove = reorderingRows[sourceIndexPath.row] //출발지
        reorderingRows.remove(at: sourceIndexPath.row) //remove하면 내가 선택한건 데이터가 삭제됨
        reorderingRows.insert(stringToMove, at: destinationIndexPath.row) //그래서 다시 더해줘야함.
    }
    
    
}

