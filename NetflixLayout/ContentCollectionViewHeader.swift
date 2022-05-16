//
//  ContentCollectionViewHeader.swift
//  NetflixLayout
//
//  Created by JUNO on 2022/05/16.
//

import UIKit
import SnapKit

class ContentCollectionViewHeader: UICollectionReusableView {
    
    let sectionName = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        sectionName.font = .systemFont(ofSize: 17, weight: .bold)
        sectionName.textColor = .white
        sectionName.sizeToFit()
        
        addSubview(sectionName)
        
        sectionName.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.top.bottom.leading.equalToSuperview().offset(10)
        }
        
    }
    
}
