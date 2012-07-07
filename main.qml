// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: board
    width: 800
    height: 600
    color: "green"

    Grid {
        id: newStacks
        x: 2
        anchors.left: board.left
        anchors.top: board.top
        anchors.margins: 30
        rows: 1
        columns: 2
        spacing: 10

        CardHolder {}
        CardHolder {}
    }

    Grid {
        id: cardStacks
        x: 4;
        anchors.right: board.right
        anchors.margins: 30
        anchors.top: board.top;
        rows: 1;
        columns: 4;
        spacing: 15

        CardHolder {}
        CardHolder {}
        CardHolder {}
        CardHolder {}
    }
}
