//
//  UIColor+Extension.swift
//
//
//  Created by 박세라 on 4/2/24.
//
import UIKit

protocol HasTypeName {
  
}

extension HasTypeName {
  static var typeName: String { String(describing: self) }
}

extension UIView: HasTypeName {
  
}
// MARK: UICollectionView
extension UICollectionView {
  func register<T: UICollectionViewCell>(_ cellClass: T.Type) {
    self.register(cellClass, forCellWithReuseIdentifier: T.typeName)
  }
  
  func dequeueReusableCell<T: UICollectionViewCell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
    return self.dequeueReusableCell(withReuseIdentifier: T.typeName, for: indexPath) as! T
  }
}

// MARK: UIView
extension UIView {
    func roundCorners(cornerRadius: CGFloat, maskedCorners: CACornerMask) {
        clipsToBounds = true
        layer.cornerRadius = cornerRadius
        layer.maskedCorners = CACornerMask(arrayLiteral: maskedCorners)
    }
}
