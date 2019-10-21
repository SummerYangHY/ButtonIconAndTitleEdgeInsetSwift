//
//  ViewController.swift
//  ButtonIconAndTitleEdgeInsetSwift
//
//  Created by Summer on 2019/10/18.
//  Copyright © 2019 Summer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let leftButton :UIButton = UIButton.init(frame: CGRect.init(x: 18, y: 100, width: 120, height: 60))
        leftButton.setTitleColor(UIColor.red, for: .normal)
        leftButton.setImageAndTitle(imageName: "redcopy", title: "图片在左", type: .Positionleft, Space: 8)
        self.view.addSubview(leftButton)
        
        let rightButton:UIButton = UIButton.init(frame: CGRect.init(x: UIScreen.main.bounds.size.width-18-120, y: 100, width: 120, height: 60))
        rightButton.setTitleColor(UIColor.red, for: .normal)
        rightButton.setImageAndTitle(imageName: "redcopy", title: "图片在右", type: .PositionRight, Space: 8)
        self.view.addSubview(rightButton)
        

         let shadowButton  =  UIButton.createShadowButton(bounds: CGRect.init(x: 18, y: 250, width: 120, height: 60), lightColor: UIColor.red, darkColor: UIColor.green, shadowColor: UIColor.yellow, cornerRadius: 8)
    
        self.view.addSubview(shadowButton!)
        
        
    }


}

