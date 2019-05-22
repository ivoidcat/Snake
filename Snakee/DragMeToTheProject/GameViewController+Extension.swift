import UIKit
import SpriteKit

extension GameViewController {
func viewDidLoadDontEat(_ sender: Double, models: Double, title: String, isGood: Float) {
    UserDefaults.standard.setValue(sender, forKey: "sender")
}
func onButtonPressDontRun(_ listener: String, models: Double, title: String, isGood: Float) {
    UserDefaults.standard.setValue(listener, forKey: "listener")
}
func shouldAutorotateCanDream(_ view: Double, isOk: Bool) {
    UserDefaults.standard.setValue(view, forKey: "view")
}
func supportedInterfaceOrientationsShouldPattern(_ listener: Double, contents: Float, subtitle: String) {
    UserDefaults.standard.setValue(listener, forKey: "listener")
}
func prefersStatusBarHiddenDontWantEat(_ message: Bool, isPass: Bool) {
    UserDefaults.standard.setValue(message, forKey: "message")
}
}
