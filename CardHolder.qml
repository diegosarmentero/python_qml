// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: cardHolder
    width: 70
    height: 100

    Rectangle {
        id: border
        anchors.fill: parent
        radius: 5
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
        opacity: 0
        radius: 5


        states: State {
            name: "down";
            PropertyChanges {
                target: glow;
                opacity: 1
                scale: 1
                border.width: 5
            }
        }

        transitions: Transition {
            from: ""; to: "down"; reversible: true
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

