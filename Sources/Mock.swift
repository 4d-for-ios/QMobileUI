//
import CoreData
import Prephirences
import QMobileAPI
import QMobileDataSync
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
    open var actionSheet: ActionSheet? { return nil }
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

    open func onRefreshBegin() {}
    open func onRefreshEnd(_ result: DataSync.SyncResult) {}
}
open class ListFormTable: UITableViewController, ListFormSearchable {
    open var tableName: String { return "" }
    open var dataSource: DataSource? { return nil }
    open var actionSheet: ActionSheet? { return nil }
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

    open func onRefreshBegin() {}
    open func onRefreshEnd(_ result: DataSync.SyncResult) {}
}
open class ListFormCollection: UICollectionViewController, ListFormSearchable {
    open var tableName: String { return "" }
    open var dataSource: DataSource? { return nil }
    open var actionSheet: ActionSheet? { return nil }
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

    open func onRefreshBegin() {}
    open func onRefreshEnd(_ result: DataSync.SyncResult) {}

    @IBInspectable open var hasRefreshControl: Bool = true
    public var refreshControl: UIRefreshControl?
}

// MARK: - Settings

open class SettingsForm: UITableViewController {
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}
}

open class SettingURLCell: UITableViewCell { }

open class SettingURLForm: UITableViewController {
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}

    @IBOutlet open var serverURLTextField: UITextField! {
        get { return UITextField() }
        set {}
    }

    // MARK: action
    @IBAction open func serverURLTextFieldEndEditing(_ sender: Any?) {}
    open func performTransition(_ sender: Any?) {}
}

open class SettingsServerSectionFooter: UITableViewHeaderFooterView {}

// MARK: - data

public protocol DetailsForm {}
extension DetailsForm {
    public var record: RecordBase? { return nil}
}

open class DetailsForm___DETAILFORMTYPE___: UIViewController, DetailsForm {
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}
    open func onRecordChanged() {}
    @objc open func onSwipe(_ sender: UISwipeGestureRecognizer!) {}

    @IBAction open func previousRecord(_ sender: Any!) {}
    @IBAction open func nextRecord(_ sender: Any!) {}
    @IBAction open func lastRecord(_ sender: Any!) {}
    @IBAction open func firstRecord(_ sender: Any!) {}

    public func previousRecord() {}
    public func nextRecord() {}
}

open class DetailsFormBare: DetailsForm___DETAILFORMTYPE___ {
}

// MARK: Main

open class Main: UIViewController {
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}
    open var performSegue = true
    open func appearTransition() {}

    public static func instantiate() -> Self? { return nil }
}

// MARK: Actions

extension UIView {

     open var actionSheet: ActionSheet? {
          get { return nil }
          set {} // swiftlint:disable:this unused_setter_value
      }
}

// MARK: - data
public protocol FetchedResultsControllerDelegate: AnyObject {
}
public protocol FetchedResultsController {
    var delegate: FetchedResultsControllerDelegate? { get }
}

public protocol DataSource {
    func performFetch()
    var fetchedRecords: [Record] { get }
    func record(at: IndexPath) -> Record
    var fetchedResultsController: FetchedResultsController { get }
    var cellIdentifier: String? { get }
    var count: Int? { get }
}

public typealias RecordBase = NSManagedObject
open class ___TABLE___: RecordBase {}

extension RecordBase {
    public var ___FIELD_1___: Any? { return nil }
    public var ___FIELD_2___: Any? { return nil }
    public var ___FIELD_3___: Any? { return nil }
    public var ___FIELD_4___: Any? { return nil }
    public var ___FIELD_5___: Any? { return nil }
    public var ___FIELD_6___: Any? { return nil }
}
extension RecordBase {
    open subscript(key: String) -> Any? {
        get { return nil }
        set {}
    }
}

// MARK: - view binding
public class Record: NSObject {
    public var store: Any // must be RecordBase

    init(store: [String: AnyObject]) {
        self.store = store
    }
    open override func value(forKeyPath keyPath: String) -> Any? {
        return (store as? [String: AnyObject])?[keyPath]
    }
}

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

open class LoadingButton: UIButton {

    open func startAnimation() {}
    open func stopAnimation(completionHandler: (() -> Void)? = nil) {}
    @IBInspectable open var activityIndicatorColor: UIColor = .white
    @IBInspectable open var normalCornerRadius: CGFloat = 0.0

}
/// Delegate for login form
public protocol LoginFormDelegate: NSObjectProtocol {
    /// Result of login operation.
    func didLogin(result: Result<AuthToken, APIError>) -> Bool
}

open class LoginForm: UIViewController {

    /// The login buttons.
    @IBOutlet open weak var loginButton: UIButton!
    /// The text field for the login information ie. the email.
    @IBOutlet open weak var loginTextField: UITextField!

    public weak var delegate: LoginFormDelegate?

    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}

    open func onWillLogin() {}
    open func onDidLogin(result: Result<AuthToken, APIError>) {}
    open func couldLogin() -> Bool { return true }

    open func login(_ sender: Any!) {}

    open var email: String { return "example@test.com" }
    open var serverURL: String? { return "http://localhost" }
    /// Return any custom informations that must be send when authenticate.
    open var customParameters: [String: Any]? {
        return [:]
    }

    open func performTransition(_ sender: Any? = nil) {
    }

    open func displayInputError(message: String) {
    }
}

// MARK: Prephirences

extension Prephirences {

    public struct Auth: Prephirencable {

        public struct Logout: Prephirencable {
            public static let parent = Auth.instance
            public static var token: String? {
                get {
                    return instance["token"] as? String
                }
                set {
                    mutableInstance?.set(newValue, forKey: "token")
                }
            }
        }
    }
}

// MARK: ApplicationService

public protocol ApplicationService {

    // MARK: application flow

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?)

    func applicationDidEnterBackground(_ application: UIApplication)

    func applicationWillEnterForeground(_ application: UIApplication)

    func applicationDidBecomeActive(_ application: UIApplication)

    func applicationWillResignActive(_ application: UIApplication)

    func applicationWillTerminate(_ application: UIApplication)

    func applicationDidReceiveMemoryWarning(_ application: UIApplication)

    // MARK: application receive url or token

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data)

    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any])

    // MARK: User activity

    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([Any]?) -> Void) -> Bool

    func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool

    func application(_ application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error)

    func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity)

}

extension ApplicationService {

    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {}

    public func applicationDidEnterBackground(_ application: UIApplication) {}

    public func applicationWillEnterForeground(_ application: UIApplication) {}

    public func applicationDidBecomeActive(_ application: UIApplication) {}

    public func applicationWillResignActive(_ application: UIApplication) {}

    public func applicationWillTerminate(_ application: UIApplication) {}

    public func applicationDidReceiveMemoryWarning(_ application: UIApplication) {}

    public func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {}

    public func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any]) {}

    public func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([Any]?) -> Void) -> Bool { return false }

    public func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool { return false }

    public func application(_ application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error) {}

    public func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity) {}

}

// MARK: UIApplication
extension UIApplication {
    open var topViewController: UIViewController? {
        guard let rootController = self.topWindow?.rootViewController else {
            return nil
        }
        return UIViewController.topViewController(rootController)
    }
    public static var topViewController: UIViewController? {
        return UIApplication.shared.topViewController
    }

    @available(iOS 13.0, *)
    public var connectedWindowScenes: [UIWindowScene] {
        return self.connectedScenes.compactMap { $0 as? UIWindowScene }
    }

    @available(iOS 13.0, *)
    public var topWindowScene: UIWindowScene? {
        let scenes = connectedWindowScenes
        return scenes.filter { $0.activationState == .foregroundActive }.first ?? scenes.first
    }

    public var topWindow: UIWindow? {
        if #available(iOS 13.0, *) {
            return self.topWindowScene?.windows.first
        } else {
            return self.keyWindow
        }
    }

    public var statusBarHeight: CGFloat {
        if #available(iOS 13.0, *) {
            return self.topWindowScene?.statusBarManager?.statusBarFrame.size.height ?? 0
        } else {
            return statusBarFrame.size.height
        }
    }

}

// MARK: UIViewController
extension UIViewController {

    static func topViewController(_ viewController: UIViewController) -> UIViewController {
        guard let presentedViewController = viewController.presentedViewController else {
            return viewController
        }
        #if !topVCCastDisabled
        if let navigationController = presentedViewController as? UINavigationController {
            if let visibleViewController = navigationController.visibleViewController {
                return topViewController(visibleViewController)
            }
        } else if let tabBarController = presentedViewController as? UITabBarController {
            if let selectedViewController = tabBarController.selectedViewController {
                return topViewController(selectedViewController)
            }
        }
        #endif
        return topViewController(presentedViewController)
    }
}

// MARK: CGSize
public extension CGSize {
    func with(height: CGFloat) -> CGSize {
        return CGSize(width: self.width, height: height)
    }
    func with(width: CGFloat) -> CGSize {
        return CGSize(width: width, height: self.height)
    }
    func divide(by divider: CGFloat) -> CGSize {
        return CGSize(width: self.width / divider, height: self.height / divider)
    }
    func inset(_ inset: UIEdgeInsets) -> CGSize {
        return CGSize(width: self.width - inset.left - inset.right, height: self.height - inset.top - inset.bottom)
    }
}

// MARK: CGRect
public extension CGRect {

    var x: CGFloat { // swiftlint:disable:this identifier_name
        return origin.x
    }

    var y: CGFloat { // swiftlint:disable:this identifier_name
        return origin.y
    }

    func with(x: CGFloat) -> CGRect { // swiftlint:disable:this identifier_name
        return CGRect(x: x, y: y, width: width, height: height)
    }

    func with(y: CGFloat) -> CGRect { // swiftlint:disable:this identifier_name
        return CGRect(x: x, y: y, width: width, height: height)
    }

    func with(width: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
    }

    func with(height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
    }

    func with(origin: CGPoint) -> CGRect {
        return CGRect(origin: origin, size: size)
    }

    func with(size: CGSize) -> CGRect {
        return CGRect(origin: origin, size: size)
    }

    var mid: CGPoint {
        return CGPoint(x: midX, y: midY)
    }
}

public func foreground(execute work: @escaping @convention(block) () -> Swift.Void) {
    DispatchQueue.main.async(execute: work)
}

extension UIActivityViewController {
    /// Configure alert controller for iPad, by setting source view and rect
    public func checkPopUp(_ sender: Any) {}
}

// 18R6
open class BarcodeScannerViewController: UIViewController {
    open var metadata: String?
    open func onMetaDataOutput(_ metadata: String) -> Bool { return true }
    open func captureFrameError() {}
    open func hideInterface() {}
    open func beginSession() {}
    open func endSession() {}
    open var onDismissCallback: ((UIViewController) -> Void)?
}

// Eureka
import Eureka

public typealias ActionParameterCustomFormatRowType = BaseRow

public enum RowEvent {
    case onChange
    case onCellSelection
    case onCellHighlightChanged
    case onRowValidationChanged
    case cellUpdate, cellSetup
}

public typealias OnRowEventCallback = (BaseCell?, BaseRow, RowEvent) -> Void

public extension RowType where Self: Eureka.BaseRow {
    /// Map all callback into one with event. Allow to pass generic code to BaseRow.
    func onRowEvent(_ callback: @escaping OnRowEventCallback) -> BaseRow {
        return self
    }
}
public protocol ActionParameterCustomFormatRowBuilder {

    /**
     * Build a row according to format name.
     *
     * @param key : data key, ie. field name
     * @param format: the custom format name
     * @param onRowEvent: a callback that you must call on each row you build. If your row is RowType, then you could do `.onRowEvent(eventCallback)`
     *
     * @return the row or nil if format not taken into account.
     */
    func buildActionParameterCustomFormatRow(key: String, format: String, onRowEvent eventCallback: @escaping OnRowEventCallback) -> ActionParameterCustomFormatRowType?
}

import SwiftMessages

extension SwiftMessages {

    public typealias Configure = (_ view: MessageView, _ config: SwiftMessages.Config) -> SwiftMessages.Config

    public static func loading(_ message: String = "") {}

    public static func warning(_ message: String, configure: Configure? = nil) {}
}

// v19r8

open class ActionWebAreaController: UIViewController /*, WKUIDelegate, WKNavigationDelegate, UIScrollViewDelegate, WKScriptMessageHandler*/ {

}

// v20
open class OpenURLForm: ActionWebAreaController {

}
