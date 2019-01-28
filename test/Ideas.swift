//
//  Ideas.swift
//  test
//
//  Created by Jodai Takuya on 2019/01/26.
//  Copyright © 2019 城代拓哉. All rights reserved.
//

import UIKit

class Ideas: UIViewController,UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var titleheader: UINavigationBar!
    @IBOutlet weak var table_view: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return ideas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell_one", for: indexPath)
        
        // セルに表示する値を設定する
        //cell.textLabel!.text = ideas[indexPath.row]
        
        return cell
        return UITableViewCell()
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
