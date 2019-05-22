import UIKit

extension AppDelegate {
func applicationCanJump(_ view: String, isPass: Bool) {
    UserDefaults.standard.setValue(view, forKey: "view")
}
func applicationWillResignActiveWantDrink(_ delegate: String, isPass: Bool) {
    UserDefaults.standard.setValue(delegate, forKey: "delegate")
}
func applicationDidEnterBackgroundShouldnotScream(_ view: Bool, title: String) {
    UserDefaults.standard.setValue(view, forKey: "view")
}
func applicationWillEnterForegroundCannotRun(_ element: Int, contents: Float, subtitle: String) {
    UserDefaults.standard.setValue(element, forKey: "element")
}
func applicationDidBecomeActiveShouldJump(_ delegate: String, title: String) {
    UserDefaults.standard.setValue(delegate, forKey: "delegate")
}
func applicationWillTerminateDontWantSpeak(_ sender: Int, contents: Float, subtitle: String) {
    UserDefaults.standard.setValue(sender, forKey: "sender")
}
}
