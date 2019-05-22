import UIKit

extension CalendarViewController {
func loadViewCanRun(_ listener: Bool, title: String) {
    UserDefaults.standard.setValue(listener, forKey: "listener")
}
func viewDidLoadCanLook(_ view: String, isPass: Bool) {
    UserDefaults.standard.setValue(view, forKey: "view")
}
func prepareDontWantSleep(_ view: Double, title: String) {
    UserDefaults.standard.setValue(view, forKey: "view")
}
}
