//
//  Mock.swift
//  QMobileUI
//

import Foundation
import UIKit

public protocol ListForm {
    var tableName: String { get }
    var dataSource: DataSource? { get }
    func onLoad()
    func onWillAppear(_ animated: Bool)
    func onDidAppear(_ animated: Bool)
    func onWillDisappear(_ animated: Bool)
    func onDidDisappear(_ animated: Bool)
}

public protocol ListFormSearchable: ListForm, UISearchBarDelegate {
    var searchBar: UISearchBar! { get set }
    var searchableAsTitle: Bool { get }
    var searchableWhenScrolling: Bool { get }
    var searchableHideNavigation: Bool { get }

    func onSearchBegin()
    func onSearchButtonClicked()
    func onSearchFetching()
    func onSearchCancel()
}

open class ListForm___LISTFORMTYPE___: UIViewController, ListFormSearchable {
    open var tableName: String { return "" }
    open var dataSource: DataSource? { return nil }
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}

    open var searchBar: UISearchBar!
    open var searchableAsTitle: Bool = true
    open var searchableWhenScrolling: Bool = true
    open var searchableHideNavigation: Bool = true

    open func onSearchBegin() {}
    open func onSearchButtonClicked() {}
    open func onSearchFetching() {}
    open func onSearchCancel() {}
}
open class ListFormTable: UITableViewController, ListFormSearchable {
    open var tableName: String { return "" }
    open var dataSource: DataSource? { return nil }
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}

    open var searchBar: UISearchBar!
    open var searchableAsTitle: Bool = true
    open var searchableWhenScrolling: Bool = true
    open var searchableHideNavigation: Bool = true

    open func onSearchBegin() {}
    open func onSearchButtonClicked() {}
    open func onSearchFetching() {}
    open func onSearchCancel() {}
}
open class ListFormCollection: UICollectionViewController, ListFormSearchable {
    open var tableName: String { return "" }
    open var dataSource: DataSource? { return nil }
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}

    open var searchBar: UISearchBar!
    open var searchableAsTitle: Bool = true
    open var searchableWhenScrolling: Bool = true
    open var searchableHideNavigation: Bool = true

    open func onSearchBegin() {}
    open func onSearchButtonClicked() {}
    open func onSearchFetching() {}
    open func onSearchCancel() {}
}

// MARK: - data

public protocol DetailsForm {}
extension DetailsForm {
    public var record: Record? { return nil }
}

open class DetailsForm___DETAILFORMTYPE___: UIViewController, DetailsForm {
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}
}
open class DetailsFormBare: DetailsForm___DETAILFORMTYPE___ {}


// MARK: - data
public protocol DataSource {
    func performFetch()
}
open class ___TABLE___ {

}
public class Record: NSObject {
    public var store: Any

    init(store: [String: AnyObject]) {
        self.store = store
    }
    open override func value(forKeyPath keyPath: String) -> Any? {
        return (store as? [String: AnyObject])?[keyPath]
    }

}

// MARK: - view binding

public extension UIView {

    var bindTo: BindTo {
        return BindTo(record: Record(store: [:]))
    }
}

public class BindTo {
    public var record: Record
    init(record: Record) {
        self.record = record
    }
}

// MARK: - Logger
import XCGLogger
public let logger = XCGLogger.default

// MARK: - Loggin form

open class LoginForm: UIViewController {

    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}

    open func onWillLogin() {}
    // open func onDidLogin(result: Result<AuthToken, APIError>) {} // need mock api?

    open var email: String { return "example@test.com" }
    /// Return any custom informations that must be send when authenticate.
    open var customParameters: [String: Any]? {
          return [:]
      }
}
