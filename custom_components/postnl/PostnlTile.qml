import QtQuick 2.1
//import qb.base 1.0
import qb.components 1.0

Tile {
	id: postnlTile

	onClicked: {
		stage.openFullscreen(app.postnlScreenUrl);
	}

	Text {
		id: txtBarcode
		text: (app.tileParcelName.length > 0) ? app.tileParcelName.substring(0, 25) : app.tileBarcode
		color: (typeof dimmableColors !== 'undefined') ? dimmableColors.clockTileColor : colors.clockTileColor
		anchors {
			baseline: parent.top
			baselineOffset: isNxt ? 50 : 40
			horizontalCenter: parent.horizontalCenter
		}
		font.pixelSize: isNxt ? 20 : 16
		font.family: qfont.regular.name
	}

	Text {
		id: txtSender
		text: (app.tileSender.length > 2) ? "Van: " + app.tileSender : "via PostNL"
		color: (typeof dimmableColors !== 'undefined') ? dimmableColors.clockTileColor : colors.clockTileColor
		anchors {
			top: txtBarcode.bottom
			horizontalCenter: parent.horizontalCenter
		}
		font.pixelSize: isNxt ? 20 : 16
		font.family: qfont.bold.name
	}

	Text {
		id: txtDate
		text: (app.tileDate.length > 5) ? "Verwacht op " + app.tileDate : app.tileDate
		color: (typeof dimmableColors !== 'undefined') ? dimmableColors.clockTileColor : colors.clockTileColor
		anchors {
			baseline: parent.top
			baselineOffset: isNxt ? 120 : 95
			horizontalCenter: parent.horizontalCenter
		}
		horizontalAlignment: Text.AlignHCenter
		font.pixelSize: isNxt ? 20 : 16
		font.family: qfont.regular.name
	}

	Text {
		id: txtTime
		text: app.tileTime
		color: (typeof dimmableColors !== 'undefined') ? dimmableColors.clockTileColor : colors.clockTileColor
		anchors {
			top: txtDate.bottom
			horizontalCenter: parent.horizontalCenter
		}
		horizontalAlignment: Text.AlignHCenter
		font.pixelSize: isNxt ? 20 : 16
		font.family: qfont.regular.name
	}
}
