// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: board
    width: 800
    height: 600
    color: "green"

    property int cardWidth: 79
    property int cardHeight: 123

    Grid {
        id: newStacks
        x: 2
        anchors.left: board.left
        anchors.top: board.top
        anchors.margins: 30
        rows: 1
        columns: 2
        spacing: 10

        CardHolder {width: cardWidth; height: cardHeight}
        CardHolder {width: cardWidth; height: cardHeight}
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

        CardHolder {width: cardWidth; height: cardHeight}
        CardHolder {width: cardWidth; height: cardHeight}
        CardHolder {width: cardWidth; height: cardHeight}
        CardHolder {width: cardWidth; height: cardHeight}
    }

    Grid {
        id: cards
        x: 6
        anchors.margins: 30
        anchors.top: cardStacks.bottom
        anchors.right: cardStacks.right
        rows: 1
        columns: 6
        spacing: 15

        CardHolder{width: cardWidth; height: cardHeight}
        CardHolder{width: cardWidth; height: cardHeight}
        CardHolder{width: cardWidth; height: cardHeight}
        CardHolder{width: cardWidth; height: cardHeight}
        CardHolder{width: cardWidth; height: cardHeight}
        CardHolder{width: cardWidth; height: cardHeight}
    }

    Card {width: cardWidth; height: cardHeight}
}
