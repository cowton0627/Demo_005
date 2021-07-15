//
//  ViewController.swift
//  Demo_005
//
//  Created by 鄭淳澧 on 2021/7/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //直接播放gif
        guard let data = NSDataAsset(name: "7w48c-vz4du")?.data else { return }
        let cfData = data as CFData
        CGAnimateImageDataWithBlock(cfData, nil) { (_, cgImage, _) in
                 self.myImgView.image = UIImage(cgImage: cgImage)
        }
        
        
        //將gif轉成一張張圖檔再播放
//        let animatedImage = UIImage.animatedImageNamed("50dfa43c56ee47a0b3744e6614736536TaeyLKAiMEFPTxEW-", duration: 1)
//              myImgView.image = animatedImage
        
        
        //若要特別控制播放參數, 則將圖存到array中
//        var images = [UIImage]()
//        for i in 0...45 {
//            images.append(UIImage(named: "50dfa43c56ee47a0b3744e6614736536TaeyLKAiMEFPTxEW-\(i)")!)
//        }
//        myImgView.animationImages = images
//        myImgView.animationDuration = 1
//        myImgView.animationRepeatCount = 25
//        myImgView.image = images.last
//        myImgView.startAnimating()
//
        
//        myImgView.image = UIImage(named: "50dfa43c56ee47a0b3744e6614736536TaeyLKAiMEFPTxEW-0")
    }


}

