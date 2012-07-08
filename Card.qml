import QtQuick 1.1

Item {
    id: card
    width: parent.width
    height: parent.height
    property bool dragging: false

    Image {
        id: cardImage
        smooth: true
        source: "cartas/cardset-gdkcard-bonded/01c.gif"
        cache: false
        x: 1; y: 1
        fillMode: Image.PreserveAspectFit
        width: parent.width - 1
        height: parent.height - 1
    }

    MouseArea {
        id: mousearea
        hoverEnabled: true
        anchors.fill: parent
        drag.target: card
        drag.axis: Drag.XandYAxis
    }

}
