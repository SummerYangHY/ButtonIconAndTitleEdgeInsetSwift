//
//  UIButton + Extension.swift
//  YLTService
//
//  Created by Summer on 2017/8/8.
//  Copyright © 2017年 YLT. All rights reserved.
//

import Foundation
import UIKit
/*
 枚举 设置 图片的位置
 */
public enum ButtonImagePosition : Int{
    
    case PositionTop = 0
    case Positionleft
    case PositionBottom
    case PositionRight
}


extension UIButton {
    
    /**
     创建加阴影渐变色及圆角的button
     @param  bounds         按钮大小
     @param  lightColor     过渡浅色
     @param  darkColor      过渡深色
     @param  shadowColor    阴影颜色
     @param  cornerRadius   圆角大小
     */
    
    static func createShadowButton( bounds : CGRect , lightColor : UIColor , darkColor : UIColor , shadowColor : UIColor , cornerRadius : CGFloat ) -> UIButton? {
        
        let button = UIButton.init(type: .custom)
        let layer = CAGradientLayer.init()
        layer.colors = [lightColor.cgColor,darkColor.cgColor]
        layer.startPoint = CGPoint.init(x: 0, y: 0)
        layer.endPoint = CGPoint.init(x: 1, y: 0)
        layer.position = CGPoint.init(x: 0, y: 0)
        layer.anchorPoint = CGPoint.zero
        layer.bounds = bounds
        layer.masksToBounds = true
        layer.cornerRadius = cornerRadius
        layer.needsLayout()
        button.layer.addSublayer(layer)
        button.layer.shadowColor = shadowColor.cgColor
        button.layer.shadowOffset = CGSize.init(width: 0, height: 4)
        button.layer.masksToBounds = false
        button.layer.shadowOpacity = 0.8
        button.layer.shadowRadius = 3
        button.layer.cornerRadius = cornerRadius
        return button
        
    }
    /**
     创建加阴影渐变色及圆角的button
     @param  shadowColor    阴影颜色
     @param  cornerRadius   圆角大小
     */
    public func deformation(shadowColor : UIColor , cornerRadius : CGFloat ,backgroundColor : UIColor){
        
        self.backgroundColor = backgroundColor
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = CGSize.init(width: 0, height: 4)
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.4
        self.layer.shadowRadius = 6
        self.layer.cornerRadius = cornerRadius
    
    }
    
    
    
    //pragma MARK:
    
    /*
     自由设置button上文字和图片的位置
     imageName:图片的名字
     title：button 的名字
     type ：image 的位置
     Space ：图片文字之间的间距
     */
    public func setImageAndTitle (imageName:String, title:String, type:ButtonImagePosition, Space space:CGFloat)  {
        self.setTitle(title, for: .normal)
        self.setImage(UIImage(named:imageName), for: .normal)
        
        let imageWith :CGFloat = (self.imageView?.frame.size.width)!;
        let imageHeight :CGFloat = (self.imageView?.frame.size.height)!;
        
        var labelWidth :CGFloat = 0.0;
        var labelHeight :CGFloat = 0.0;
        
        labelWidth = CGFloat(self.titleLabel!.intrinsicContentSize.width);
        labelHeight = CGFloat(self.titleLabel!.intrinsicContentSize.height);
        
        var  imageEdgeInsets :UIEdgeInsets = UIEdgeInsets();
        var  labelEdgeInsets :UIEdgeInsets = UIEdgeInsets();
        
        switch type {
        case .PositionTop:
            imageEdgeInsets = UIEdgeInsets(top: -labelHeight - space/2.0, left: 0, bottom: 0, right: -labelWidth);
            labelEdgeInsets = UIEdgeInsets(top: 0, left: -imageWith, bottom: -imageHeight-space/2.0, right: 0);
            break;
        case .Positionleft:
            imageEdgeInsets = UIEdgeInsets(top: 0, left: -space/2.0, bottom: 0, right: space/2.0);
            labelEdgeInsets = UIEdgeInsets(top: 0, left: space/2.0, bottom: 0, right: -space/2.0);
            break;
        case .PositionBottom:
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -labelHeight-space/2.0, right: -labelWidth);
            labelEdgeInsets = UIEdgeInsets(top: -imageHeight-space/2.0, left: -imageWith, bottom: 0, right: 0);
            break;
        case .PositionRight:
            imageEdgeInsets = UIEdgeInsets(top: 0, left: labelWidth+space/2.0, bottom: 0, right: -labelWidth-space/2.0);
            labelEdgeInsets = UIEdgeInsets(top: 0, left: -imageWith-space/2.0, bottom: 0, right: imageWith+space/2.0);
            break;
            
        }
        
        // 4. 赋值
        self.titleEdgeInsets = labelEdgeInsets;
        self.imageEdgeInsets = imageEdgeInsets;
        
    }
    
}
