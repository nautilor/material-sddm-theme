import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects 1.0

TextField {
	id: passwordField
	focus: true
	selectByMouse: true
	placeholderText: "Password"
	echoMode: TextInput.Password
	passwordCharacter: "•"
	passwordMaskDelay: config.PasswordShowLastLetter
	renderType: Text.NativeRendering
	horizontalAlignment: TextInput.AlignHCenter
	font {
		family: config.Font
		pointSize: config.FontSize
		bold: true
	}
	color: "#e8e9eb"
	placeholderTextColor: "#e8e9eb"
	onAccepted: loginButton.clicked()
	background: Item {
		implicitWidth: 280
		implicitHeight: 56

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

		Rectangle {
			id: bg
			anchors.fill: parent
			radius: 50
			color: passwordField.hovered ? "#21232e" : "#161820"
		}
	}
}

