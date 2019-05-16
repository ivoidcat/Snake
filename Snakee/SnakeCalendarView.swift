//
//  SnakeCalendarView.swift
//  Snakee
//
//  Created by stephen on 2019/5/16.
//  Copyright © 2019 Caleb Cheng. All rights reserved.
//

import UIKit
import SnapKit
import JTAppleCalendar

// SnakeCalendarView
final class SnakeCalendarView: JTAppleCalendarView {
    
    private let identifier: String = "identifier"
    
    private let sIdentifier: String = "sIdentifier"

    private let formatter: DateFormatter = {
        let f = DateFormatter()
        f.dateFormat = "MMM"
        return f
    }()
    
    override init() {
        super.init()
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        self.register(SnakeCalendarCell.self,
                      forCellWithReuseIdentifier: identifier)

        self.register(SnakeCalendarHeaderView.self,
                      forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                      withReuseIdentifier: sIdentifier)

        self.calendarDataSource = self
        self.calendarDelegate = self
        self.scrollDirection = .horizontal
        self.scrollingMode   = .stopAtEachCalendarFrame
        self.showsHorizontalScrollIndicator = false
        self.backgroundColor = .white
    }
}

// ******************************************
//
// MARK: - Extension
//
// ******************************************
extension SnakeCalendarView {
    
    private func configureCell(view: JTAppleCell?, cellState: CellState) {
        guard let cell = view as? SnakeCalendarCell  else { return }
        cell.context.text = cellState.text
        handleCellTextColor(cell: cell, cellState: cellState)
        handleCellSelected(cell: cell, cellState: cellState)
    }
    
    private func handleCellTextColor(cell: SnakeCalendarCell, cellState: CellState) {
        if cellState.dateBelongsTo == .thisMonth {
            cell.isHidden = false
        } else {
            cell.isHidden = true
        }
    }
    
    private func handleCellSelected(cell: SnakeCalendarCell, cellState: CellState) {
        if cellState.isSelected {
            cell.selectedView.layer.cornerRadius =  cell.selectedView.frame.width / 2
            cell.selectedView.isHidden = false
        } else {
            cell.selectedView.isHidden = true
        }
    }
}

// ******************************************
//
// MARK: - JTAppleCalendarViewDataSource
//
// ******************************************
extension SnakeCalendarView: JTAppleCalendarViewDataSource {
    
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MM dd"
        
        let startDate = formatter.date(from: "2018 01 01")!
        let endDate = Date()
        return ConfigurationParameters(startDate: startDate,
                                       endDate: endDate,
                                       generateInDates: .forAllMonths,
                                       generateOutDates: .tillEndOfGrid)
    }
}

// ******************************************
//
// MARK: - JTAppleCalendarViewDelegate
//
// ******************************************
extension SnakeCalendarView: JTAppleCalendarViewDelegate {
    
    func calendar(_ calendar: JTAppleCalendarView, didSelectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        configureCell(view: cell, cellState: cellState)
    }
    
    func calendar(_ calendar: JTAppleCalendarView, didDeselectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        configureCell(view: cell, cellState: cellState)
    }
    
    func calendar(_ calendar: JTAppleCalendarView,
                  cellForItemAt date: Date,
                  cellState: CellState,
                  indexPath: IndexPath) -> JTAppleCell {
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: identifier, for: indexPath) as! SnakeCalendarCell
        self.calendar(calendar,
                      willDisplay: cell,
                      forItemAt: date,
                      cellState: cellState,
                      indexPath: indexPath)
        return cell
    }
    
    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
        configureCell(view: cell, cellState: cellState)
    }
    
    func calendar(_ calendar: JTAppleCalendarView, shouldSelectDate date: Date, cell: JTAppleCell?, cellState: CellState) -> Bool {
        return true
    }
    
    func calendar(_ calendar: JTAppleCalendarView, headerViewForDateRange range: (start: Date, end: Date), at indexPath: IndexPath) -> JTAppleCollectionReusableView {
        let header = calendar.dequeueReusableJTAppleSupplementaryView(withReuseIdentifier: sIdentifier, for: indexPath) as! SnakeCalendarHeaderView
        header.monthTitle.text = formatter.string(from: range.start)
        return header
    }
    
    func calendarSizeForMonths(_ calendar: JTAppleCalendarView?) -> MonthSize? {
        return MonthSize(defaultSize: 50)
    }
}

