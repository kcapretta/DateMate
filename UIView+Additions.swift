//
//  UIView+Additions.swift
//  RentAdate
//
//  Created by Kassandra Capretta on 2/2/20.
//  Copyright © 2020 Kassandra Capretta. All rights reserved.
//

import UIKit

extension UIView {
  
  func smoothRoundCorners(to radius: CGFloat) {
    let maskLayer = CAShapeLayer()
    maskLayer.path = UIBezierPath(
      roundedRect: bounds,
      cornerRadius: radius
    ).cgPath
    
    layer.mask = maskLayer
  }
  
}
