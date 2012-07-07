// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: cardHolder
    width: 79
    height: 123

    Rectangle {
        id: border
        anchors.fill: parent
        radius: 10
        color: "transparent"
        border.color: "white"
    }


    MouseArea {
        id: mousearea
        hoverEnabled: true
        anchors.fill: parent
        onEntered: {
            glow.state = 'down'
        }
        onExited: {
            glow.state = ''
        }
    }

    Rectangle {
        id: glow
        color: "transparent"
        border.color: "white"
        anchors.fill: parent
        opacity: 1
        radius: 10


        states: State {
            name: "down";
            PropertyChanges {
                target: glow;
                opacity: 0
                scale: 1.15
                border.width: 2
            }
        }

        transitions: Transition {
            from: ""; to: "down";
            ParallelAnimation {
                NumberAnimation {
                    properties: "opacity, scale";
                    duration: 300;
                    easing.type: Easing.InOutQuad
                }
                ColorAnimation { duration: 300 }
            }
        }
    }

}

