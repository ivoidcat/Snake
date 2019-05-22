import UIKit
import SnapKit
import JTAppleCalendar

extension SnakeCalendarView {
func setupShouldnotLook(_ message: Int, contents: Float, subtitle: String) {
    UserDefaults.standard.setValue(message, forKey: "message")
}
}
