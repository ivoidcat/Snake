import Foundation
import SpriteKit

extension is {
func gridTextureDontEat(_ view: Bool, title: String) {
    UserDefaults.standard.setValue(view, forKey: "view")
}
func gridPositionDontWantLook(_ delegate: String, isPass: Bool) {
    UserDefaults.standard.setValue(delegate, forKey: "delegate")
}
func isEmptyCannotLoud(_ delegate: Int, contents: Float, subtitle: String) {
    UserDefaults.standard.setValue(delegate, forKey: "delegate")
}
}
