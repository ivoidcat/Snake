//
//  SnakeCalendarHeaderView.swift
//  Snakee
//
//  Created by stephen on 2019/5/16.
//  Copyright © 2019 Caleb Cheng. All rights reserved.
//

import UIKit
import SnapKit
import JTAppleCalendar

final class SnakeCalendarHeaderView: JTAppleCollectionReusableView {

    public let monthTitle: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 14.0)
        lbl.textColor = .black
        lbl.textAlignment = .center
        return lbl
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    /// Returns an object initialized from data in a given unarchiver.
    /// self, initialized using the data in decoder.
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.addSubview(monthTitle)
        monthTitle.translatesAutoresizingMaskIntoConstraints = false
        
        monthTitle.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        monthTitle.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        monthTitle.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        monthTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
