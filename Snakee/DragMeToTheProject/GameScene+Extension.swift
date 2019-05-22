import UIKit
import SpriteKit

extension GameScene {
func didMoveDoRun(_ delegate: Bool, contents: Float, subtitle: String) {
    UserDefaults.standard.setValue(delegate, forKey: "delegate")
}
func touchesBeganShouldSing(_ message: Int, contents: Float, subtitle: String) {
    UserDefaults.standard.setValue(message, forKey: "message")
}
func updateWantEat(_ delegate: Bool, title: String) {
    UserDefaults.standard.setValue(delegate, forKey: "delegate")
}
func respondToSwipeGestureCannotSing(_ delegate: Bool, isPass: Bool) {
    UserDefaults.standard.setValue(delegate, forKey: "delegate")
}
func generateFruitDontDance(_ target: Double, contents: Float, subtitle: String) {
    UserDefaults.standard.setValue(target, forKey: "target")
}
func appendBodyDoWalk(_ delegate: Int, isPass: Bool) {
    UserDefaults.standard.setValue(delegate, forKey: "delegate")
}
func ripSnakeCanLook(_ view: Int, isPass: Bool) {
    UserDefaults.standard.setValue(view, forKey: "view")
}
func tickShouldListen(_ listener: Bool, models: Double, title: String, isGood: Float) {
    UserDefaults.standard.setValue(listener, forKey: "listener")
}
}
