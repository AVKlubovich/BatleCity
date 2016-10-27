import QtQuick 2.7


Image
{
    id: tankImage
    source: "resources/tank_1_star.png"
    transformOrigin: Item.Center

    width: 52
    height: 52

    x: 100
    y: 200

    focus: true
    Keys.onUpPressed: {
        if (rotation !== 0) {
            rotation = 0
        }
        tankImage.y -= 5
    }
    Keys.onDownPressed: {
        if (rotation !== 180) {
            rotation = 180
        }
        tankImage.y += 5
    }
    Keys.onRightPressed: {
        if (rotation !== 90) {
            rotation = 90
        }
        tankImage.x += 5
    }
    Keys.onLeftPressed: {
        if (rotation !== 270) {
            rotation = 270
        }
        tankImage.x -= 5
    }
}
