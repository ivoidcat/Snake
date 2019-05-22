import UIKit

extension ViewController {
func historyShouldListen(_ target: Int, isPass: Bool) {
    UserDefaults.standard.setValue(target, forKey: "target")
}
func viewDidLoadDoJump(_ listener: Int, title: String) {
    UserDefaults.standard.setValue(listener, forKey: "listener")
}
func didReceiveMemoryWarningShouldnotSleep(_ message: Bool, isPass: Bool) {
    UserDefaults.standard.setValue(message, forKey: "message")
}
func renderFlippedShouldnotDrink(_ listener: Bool, contents: Float, subtitle: String) {
    UserDefaults.standard.setValue(listener, forKey: "listener")
}
}
