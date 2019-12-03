//
//  ComposeViewController.swift
//  TodayWrite
//
//  Created by JunHyuk on 2019/12/03.
//  Copyright © 2019 junhyuk. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    // TextView 프로퍼티 선언.
    @IBOutlet weak var memoTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 메모 작성 안하고 바로 화면 닫기 기능 구현.
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    // 메모 작성 후 저장 기능 구현.
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        
        guard let memo = memoTextView.text, memo.count > 0 else {
            alert(message: "메모를 입력하세요.")
            return
            
        }
        
        let newMemo = Memo(content: memo)
        Memo.dummyMemoList.append(newMemo)
        
        NotificationCenter.default.post(name: ComposeViewController.newMemoDidInsert, object: nil)
        
        dismiss(animated: true, completion: nil)
        
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


extension ComposeViewController {
    
    // 노티피케이션 == 라디오방송..
    static let newMemoDidInsert = Notification.Name(rawValue: "새로운 메모.")
}