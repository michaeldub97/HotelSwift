//
//  UIImage+Extensions.swift
//  HotelSwift
//
//  Created by Михаил on 12.04.2022.
//

import Foundation
import Kingfisher

extension UIImageView {
    func loadImage(_ urlString: String) {
        let url = URL(string: urlString)
        kf.setImage(with: url)
    }
    
    func loadImage(url: URL) {
        kf.setImage(with: url)
    }
}
