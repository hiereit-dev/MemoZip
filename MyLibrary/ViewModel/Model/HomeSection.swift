//
//  HomeViewController+Section.swift
//
//
//  Created by 박세라 on 4/1/24.
//
import RxDataSources
import Foundation

// TODO: Header 추가
public struct HomeSection {
    public var header: String
    public var items: [Item]
    public var identity: String
    
    public init(header: String, items: [Item]) {
        self.header = header
        self.items = items
        self.identity = UUID().uuidString
    }
}
public enum HomeSectionItem {
    case defaultCell(TodoListCellReactor)
    case planCell(PlanListCellReactor)
    case categoryCell([String])
    // ...
}

extension HomeSection: SectionModelType {
   
    public typealias Item = HomeSectionItem
    
    public init(original: HomeSection, items: [HomeSectionItem]) {
        self = original
        self.items = items
    }
}
