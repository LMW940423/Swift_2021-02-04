//
//  ViewController.swift
//  Quiz_05
//
//  Created by 이민우 on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // tvResult readOnly 설정
        tvResult.isEditable = false
    }

    @IBAction func btnResult(_ sender: Any) {
        // nil check
        let resultNum = checkNil(str: txtInput.text!)
        
        if resultNum == 0{
            
        }else{
            gugudan()
        }
    }
    
    // nil check function
    func checkNil(str : String) -> Int {
        let checkData = str.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if checkData.isEmpty{
            return 0
        }else{
            return 1
        }
        
    }
    
    // 구구단 값을 출력하는 함수
    func gugudan() {
        let inputNum = Int(txtInput.text!)
        
        for i in 1...9{
            tvResult.text += "\(inputNum!) * \(i) =\t \(String(format: "%2d", inputNum! * i))\n"
        }
    }
}

