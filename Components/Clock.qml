import QtQuick 2.15
import SddmComponents 2.0

Clock {
  id: time
  color: "#e8e9eb"
	dateFont.family: config.Font
	dateFont.weight: Font.Medium
  timeFont.family: config.Font
	timeFont.weight: Font.Bold
  anchors {
    margins: 10
    top: parent.top
    right: parent.right
		left: parent.left
  }
}
