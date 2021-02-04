//
//  ViewController.swift
//  Quiz_05-01
//
//  Created by 이민우 on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImgView: UIImageView!
    @IBOutlet weak var lblResize: UILabel!
    @IBOutlet weak var switchResize: UISwitch!
    @IBOutlet weak var switchOnOff: UISwitch!
    
    var imgOn : UIImage? // 켜진 전구 이미지
    var imgOff : UIImage? // 꺼진 전구 이미지
    var isZoom = false // 이미지 확대 여부 (처음엔 축소된 상태이기 때문에 false로 시작)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 이미지 파일 연결
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        // imgView에 image 할당하기
        ImgView.image = imgOff
        
        // switch 끄고 시작하기
        switchResize.isOn = false
        switchOnOff.isOn = false

    }

    @IBAction func switchResize(_ sender: UISwitch) {
        // 이미지 크기를 두배로
        let scale : CGFloat = 2.0
        var newWidth : CGFloat
        var newHeigth : CGFloat
        
        if isZoom{
            newWidth = ImgView.frame.width / scale
            newHeigth = ImgView.frame.height / scale
            lblResize.text = "전구 확대"
        }else{
            newWidth = ImgView.frame.width * scale
            newHeigth = ImgView.frame.height * scale
            lblResize.text = "전구 축소"
        }
        
        ImgView.frame.size = CGSize(width: newWidth, height: newHeigth)
        isZoom = !isZoom // 반대로 바꾸는 것!
        
    }
    
    @IBAction func switchOnOff(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            ImgView.image = imgOn
        default :
            ImgView.image = imgOff
        }
        
//        if sender.isOn{
//            imgView.image = imgOn
//        }else{
//            imgView.image = imgOff
//        }
    }
    
}

