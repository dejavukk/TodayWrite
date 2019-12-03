//
//  DetailViewController.swift
//  TodayWrite
//
//  Created by JunHyuk on 2019/12/03.
//  Copyright © 2019 junhyuk. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension DetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 2
    }
    
    // 어떤 셀을 표시할지 표현하는 메소드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "memoCell", for: indexPath)
            return cell
            
        case 1:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "dateCell", for: indexPath)
            return cell
            
        default:
            fatalError()
        }
    }
}
