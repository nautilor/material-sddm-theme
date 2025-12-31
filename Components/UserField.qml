import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects 1.0

Item {
	TextField {
		id: userField
		height: inputHeight
		width: inputWidth
		selectByMouse: true
		echoMode: TextInput.Normal
		selectionColor: "#7aa2f7"
		renderType: Text.NativeRendering
		font {
			family: config.Font
			pointSize: config.FontSize
			bold: true
		}
		color: "#e8e9eb"
		placeholderTextColor: "#e8e9eb"
		horizontalAlignment: Text.AlignHCenter
		placeholderText: "Username"
		text: userModel.lastUser
		background: Rectangle {
			id: userFieldBackground
			color: "#161820"
			radius: 50
		}
		states: [
			State {
				name: "focused"
				when: userField.activeFocus
				PropertyChanges {
					target: userFieldBackground
					color: "#161820"
				}
			},
			State {
				name: "hovered"
				when: userField.hovered
				PropertyChanges {
					target: userFieldBackground
					color: "#21232e"
				}
			}
		]
		transitions: Transition {
			PropertyAnimation {
				properties: "color"
				duration: 300
			}
		}
	}
		DropShadow {
			anchors.fill: bg
			horizontalOffset: 0
			verticalOffset: 1
			radius: 12
			samples: 24
			color: "#1F000000"
			source: bg
		}

		DropShadow {
			anchors.fill: bg
			horizontalOffset: 0
			verticalOffset: 0
			radius: 4
			samples: 16
			color: "#14000000"
			source: bg
		}
}
