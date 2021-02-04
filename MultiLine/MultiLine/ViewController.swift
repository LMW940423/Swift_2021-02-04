//
//  ViewController.swift
//  MultiLine
//
//  Created by 이민우 on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var tviewResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // tviewResult의 속성을 readOnly로 설정
        tviewResult.isEditable = false
    }

    @IBAction func btnAppend(_ sender: UIButton) {
        let numCheck = checkNil(str: txtInput.text!)
        
        if numCheck == 0{
            tviewResult.text += "" + "\n"
        }else{
            tviewResult.text += txtInput.text! + "\n"
        }
    }

    // nil check function
    func checkNil(str : String) -> Int {
        let check = str.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if check.isEmpty{
            return 0
        }else{
            return 1
        }
    }
    
    // 키보드 내리기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

