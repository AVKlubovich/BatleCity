.pragma library


var tank

function createTank(parent)
{
    var tankComponent = Qt.createComponent("tank.qml")
    tank = tankComponent.createObject(parent)

    return tank
}

function moveTank()
{
    if (tank.rotation !== 0) {
        rotation = 0
    }
    tank.y -= 5
}
