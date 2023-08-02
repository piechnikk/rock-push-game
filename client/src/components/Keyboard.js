import Animation from "./Animation"
import Config from "./Config";
import Websocketer from "./Websocketer"

const KEYS = {
    "left": 65,
    "up": 87,
    "right": 68,
    "down": 83,
};

export default class Keyboard {
    constructor(domElement, animation, model, list, scene, board, enemy, enemyAnimation, nick, enemyNick) {
        this.enemyNick = enemyNick
        this.nick = nick
        this.domElement = domElement;
        this.animation = animation
        this.model = model
        this.list = list
        this.scene = scene
        this.board = board
        this.enemy = enemy
        this.enemyAnimation = enemyAnimation
        this.del = null

        // events
        this.domElement.addEventListener('keydown', event => this.onKeyDown(event), false);
        this.domElement.addEventListener('keyup', event => this.onKeyUp(event), false);


        this.ws = new Websocketer(this.board, this.enemy, this.enemyAnimation, this.scene, this.enemyNick);
    }

    onKeyUp(event) {
        switch (event.keyCode) {
            case KEYS.up:
                if (Config.moveUp == 1)
                    Config.moveUp = 0;
                else {
                    let x = setInterval(function () {
                        if (Config.moveUp == 1) {
                            Config.moveUp = 0;
                            clearInterval(x)
                        }
                    }, 1)
                }
                break;
            case KEYS.left:
                if (Config.moveLeft == 1)
                    Config.moveLeft = 0;
                else {
                    let x = setInterval(function () {
                        if (Config.moveLeft == 1) {
                            Config.moveLeft = 0;
                            clearInterval(x)
                        }
                    }, 1)
                }
                break;
            case KEYS.right:
                if (Config.moveRight == 1)
                    Config.moveRight = 0;
                else {
                    let x = setInterval(function () {
                        if (Config.moveRight == 1) {
                            Config.moveRight = 0;
                            clearInterval(x)
                        }
                    }, 1)
                }
                break;
            case KEYS.down:
                if (Config.moveDown == 1)
                    Config.moveDown = 0;
                else {
                    let x = setInterval(function () {
                        if (Config.moveDown == 1) {
                            Config.moveDown = 0;
                            clearInterval(x)
                        }
                    }, 1)
                }
                break;


        }
    }

    onKeyDown(event) {
        switch (event.keyCode) {
            case KEYS.up:
                if (Config.moveUp == 0 && Config.moveLeft == 0 && Config.moveRight == 0 && Config.moveDown == 0 && this.model.moves > 0) {
                    let pusto = "pusto"
                    for (let i = 0; i < this.list.list.length; i++) {
                        if (this.list.list[i].type == "wall" && this.model.x == this.list.list[i].x && this.model.z - 1 == this.list.list[i].z) {
                            pusto = "sciana"
                            break
                        } else if (this.list.list[i].type == "rock" && this.model.x == this.list.list[i].x && this.model.z - 1 == this.list.list[i].z) {
                            let element = this.list.list.find(e => e.x == this.model.x && e.z == this.model.z - 2)
                            if (element == undefined) {
                                pusto = "przesun"
                                break
                            } else {
                                pusto = "sciana"
                                break
                            }
                        } else if (this.list.list[i].type == "enemy" && this.model.x == this.list.list[i].x && this.model.z - 1 == this.list.list[i].z) {
                            let element = this.list.list.find(e => e.x == this.model.x && e.z == this.model.z - 2)
                            if (element == undefined) {
                                pusto = "przesun"
                                break
                            } else {
                                pusto = "zabij"
                                break
                            }
                        } else if (this.list.list[i].type == "treasure" && this.model.x == this.list.list[i].x && this.model.z - 1 == this.list.list[i].z) {
                            pusto = "koniec"
                            break
                        }
                    }
                    console.log(pusto, this.model.x, this.model.z);
                    if (pusto == "pusto") {
                        Config.moveUp = 2;
                        this.animation.playAnim("pain")
                        this.model.z -= 1
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].type == "player") {
                                this.list.list[i].z -= 1
                                break
                            }
                        }
                    } else if (pusto == "przesun") {
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].x == this.model.x && this.list.list[i].z == this.model.z - 1) {
                                this.model.mesh.rotation.y = 0.5 * Math.PI
                                this.animation.playAnim("jump")
                                setTimeout(() => {
                                    this.animation.playAnim("stand")
                                }, 300)
                                this.list.list[i].z -= 1
                                this.list.list[i].mesh.position.z -= 50
                                break
                            }
                        }
                    } else if (pusto == "zabij") {
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].x == this.model.x && this.list.list[i].z == this.model.z - 1) {
                                this.model.mesh.rotation.y = 0.5 * Math.PI
                                this.animation.playAnim("jump")
                                setTimeout(() => {
                                    this.animation.playAnim("stand")
                                }, 300)
                                this.del = this.list.list[i].id
                                this.scene.remove(this.list.list[i].mesh)
                                this.list.list.splice(i, 1)
                                break
                            }
                        }
                    } else if (pusto == "koniec") {
                        this.wygrana()
                    }
                    this.model.moves -= 1
                    this.fetchSendToServerAboutPlayerMoveToEnemyBecauseWeNeedThemInTheEnemyComputerAndHisBrowserToMoveModelEnemyPlayerYesItIsVeryLongNameFunctionButNothingIsNoYesWithIt()
                    document.getElementById("moves").innerText = this.model.moves
                }
                break;
            case KEYS.left:
                if (Config.moveUp == 0 && Config.moveLeft == 0 && Config.moveRight == 0 && Config.moveDown == 0 && this.model.moves > 0) {
                    let pusto = "pusto"
                    for (let i = 0; i < this.list.list.length; i++) {
                        if (this.list.list[i].type == "wall" && this.model.x - 1 == this.list.list[i].x && this.model.z == this.list.list[i].z) {
                            pusto = "sciana"
                            break
                        } else if (this.list.list[i].type == "rock" && this.model.x - 1 == this.list.list[i].x && this.model.z == this.list.list[i].z) {
                            console.log("rock");
                            let element = this.list.list.find(e => e.x == this.model.x - 2 && e.z == this.model.z)
                            console.log("el:", element);
                            if (element == undefined) {
                                pusto = "przesun"
                                break
                            } else {
                                pusto = "sciana"
                                break
                            }
                        } else if (this.list.list[i].type == "enemy" && this.model.x - 1 == this.list.list[i].x && this.model.z == this.list.list[i].z) {
                            let element = this.list.list.find(e => e.x == this.model.x - 2 && e.z == this.model.z)
                            if (element == undefined) {
                                pusto = "przesun"
                                break
                            } else {
                                pusto = "zabij"
                                break
                            }
                        } else if (this.list.list[i].type == "treasure" && this.model.x - 1 == this.list.list[i].x && this.model.z == this.list.list[i].z) {
                            pusto = "koniec"
                            break
                        }
                    }
                    if (pusto == "pusto") {
                        Config.moveLeft = 2;
                        this.animation.playAnim("pain")
                        this.model.x -= 1
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].type == "player") {
                                this.list.list[i].x -= 1
                                break
                            }
                        }
                    } else if (pusto == "przesun") {
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].x == this.model.x - 1 && this.list.list[i].z == this.model.z) {
                                this.model.mesh.rotation.y = 1 * Math.PI
                                this.animation.playAnim("jump")
                                setTimeout(() => {
                                    this.animation.playAnim("stand")
                                }, 300)
                                this.list.list[i].x -= 1
                                this.list.list[i].mesh.position.x -= 50
                                break
                            }
                        }
                    } else if (pusto == "zabij") {
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].x == this.model.x - 1 && this.list.list[i].z == this.model.z) {
                                this.model.mesh.rotation.y = 1 * Math.PI
                                this.animation.playAnim("jump")
                                setTimeout(() => {
                                    this.animation.playAnim("stand")
                                }, 300)
                                this.del = this.list.list[i].id
                                this.scene.remove(this.list.list[i].mesh)
                                this.list.list.splice(i, 1)
                                break
                            }
                        }
                    } else if (pusto == "koniec") {
                        this.wygrana()
                    }
                    this.model.moves -= 1
                    this.fetchSendToServerAboutPlayerMoveToEnemyBecauseWeNeedThemInTheEnemyComputerAndHisBrowserToMoveModelEnemyPlayerYesItIsVeryLongNameFunctionButNothingIsNoYesWithIt()
                    document.getElementById("moves").innerText = this.model.moves
                }
                break;
            case KEYS.right:
                if (Config.moveUp == 0 && Config.moveLeft == 0 && Config.moveRight == 0 && Config.moveDown == 0 && this.model.moves > 0) {
                    let pusto = "pusto"
                    for (let i = 0; i < this.list.list.length; i++) {
                        if (this.list.list[i].type == "wall" && this.model.x + 1 == this.list.list[i].x && this.model.z == this.list.list[i].z) {
                            pusto = "sciana"
                            break
                        } else if (this.list.list[i].type == "rock" && this.model.x + 1 == this.list.list[i].x && this.model.z == this.list.list[i].z) {
                            console.log("rock");
                            let element = this.list.list.find(e => e.x == this.model.x + 2 && e.z == this.model.z)
                            console.log("el:", element);
                            if (element == undefined) {
                                pusto = "przesun"
                                break
                            } else {
                                pusto = "sciana"
                                break
                            }
                        } else if (this.list.list[i].type == "enemy" && this.model.x + 1 == this.list.list[i].x && this.model.z == this.list.list[i].z) {
                            let element = this.list.list.find(e => e.x == this.model.x + 2 && e.z == this.model.z)
                            if (element == undefined) {
                                pusto = "przesun"
                                break
                            } else {
                                pusto = "zabij"
                                break
                            }
                        } else if (this.list.list[i].type == "treasure" && this.model.x + 1 == this.list.list[i].x && this.model.z == this.list.list[i].z) {
                            pusto = "koniec"
                            break
                        }
                    }
                    if (pusto == "pusto") {
                        Config.moveRight = 2;
                        this.animation.playAnim("pain")
                        this.model.x += 1
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].type == "player") {
                                this.list.list[i].x += 1
                                break
                            }
                        }
                    } else if (pusto == "przesun") {
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].x == this.model.x + 1 && this.list.list[i].z == this.model.z) {
                                this.model.mesh.rotation.y = 0
                                this.animation.playAnim("jump")
                                setTimeout(() => {
                                    this.animation.playAnim("stand")
                                }, 300)
                                this.list.list[i].x += 1
                                this.list.list[i].mesh.position.x += 50
                                break
                            }
                        }
                    } else if (pusto == "zabij") {
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].x == this.model.x + 1 && this.list.list[i].z == this.model.z) {
                                this.model.mesh.rotation.y = 0
                                this.animation.playAnim("jump")
                                setTimeout(() => {
                                    this.animation.playAnim("stand")
                                }, 300)
                                this.del = this.list.list[i].id
                                this.scene.remove(this.list.list[i].mesh)
                                this.list.list.splice(i, 1)
                                break
                            }
                        }
                    } else if (pusto == "koniec") {
                        this.wygrana()
                    }
                    this.model.moves -= 1
                    this.fetchSendToServerAboutPlayerMoveToEnemyBecauseWeNeedThemInTheEnemyComputerAndHisBrowserToMoveModelEnemyPlayerYesItIsVeryLongNameFunctionButNothingIsNoYesWithIt()
                    document.getElementById("moves").innerText = this.model.moves
                }
                break;
            case KEYS.down:
                if (Config.moveUp == 0 && Config.moveLeft == 0 && Config.moveRight == 0 && Config.moveDown == 0 && this.model.moves > 0) {
                    let pusto = "pusto"
                    for (let i = 0; i < this.list.list.length; i++) {
                        if (this.list.list[i].type == "wall" && this.model.x == this.list.list[i].x && this.model.z + 1 == this.list.list[i].z) {
                            pusto = "sciana"
                            break
                        } else if (this.list.list[i].type == "rock" && this.model.x == this.list.list[i].x && this.model.z + 1 == this.list.list[i].z) {
                            console.log("rock");
                            let element = this.list.list.find(e => e.x == this.model.x && e.z == this.model.z + 2)
                            console.log("el:", element);
                            if (element == undefined) {
                                pusto = "przesun"
                                break
                            } else {
                                pusto = "sciana"
                                break
                            }
                        } else if (this.list.list[i].type == "enemy" && this.model.x == this.list.list[i].x && this.model.z + 1 == this.list.list[i].z) {
                            let element = this.list.list.find(e => e.x == this.model.x && e.z == this.model.z + 2)
                            if (element == undefined) {
                                pusto = "przesun"
                                break
                            } else {
                                pusto = "zabij"
                                break
                            }
                        } else if (this.list.list[i].type == "treasure" && this.model.x == this.list.list[i].x && this.model.z + 1 == this.list.list[i].z) {
                            pusto = "koniec"
                            break
                        }
                    }
                    if (pusto == "pusto") {
                        Config.moveDown = 2;
                        this.animation.playAnim("pain")
                        this.model.z += 1
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].type == "player") {
                                this.list.list[i].z += 1
                                break
                            }
                        }
                    } else if (pusto == "przesun") {
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].x == this.model.x && this.list.list[i].z == this.model.z + 1) {
                                this.model.mesh.rotation.y = 1.5 * Math.PI
                                this.animation.playAnim("jump")
                                setTimeout(() => {
                                    this.animation.playAnim("stand")
                                }, 300)
                                this.list.list[i].z += 1
                                this.list.list[i].mesh.position.z += 50
                                break
                            }
                        }
                    } else if (pusto == "zabij") {
                        for (let i = 0; i < this.list.list.length; i++) {
                            if (this.list.list[i].x == this.model.x && this.list.list[i].z == this.model.z + 1) {
                                this.model.mesh.rotation.y = 1.5 * Math.PI
                                this.animation.playAnim("jump")
                                setTimeout(() => {
                                    this.animation.playAnim("stand")
                                }, 300)
                                this.del = this.list.list[i].id
                                this.scene.remove(this.list.list[i].mesh)
                                this.list.list.splice(i, 1)
                                break
                            }
                        }
                    } else if (pusto == "koniec") {
                        this.wygrana()
                    }
                    this.model.moves -= 1
                    this.fetchSendToServerAboutPlayerMoveToEnemyBecauseWeNeedThemInTheEnemyComputerAndHisBrowserToMoveModelEnemyPlayerYesItIsVeryLongNameFunctionButNothingIsNoYesWithIt()
                    document.getElementById("moves").innerText = this.model.moves
                }
                break;
        }
        if (this.model.moves == 0) {
            this.przegrana()
        }

    }
    wygrana() {
        Config.youWin = true
        this.ws.send("wygralem")
    }
    przegrana() {
        if (Config.youWin != true) {
            Config.youWin = false
            this.ws.send("przegralem")
        }
    }
    fetchSendToServerAboutPlayerMoveToEnemyBecauseWeNeedThemInTheEnemyComputerAndHisBrowserToMoveModelEnemyPlayerYesItIsVeryLongNameFunctionButNothingIsNoYesWithIt() {
        let tab = []
        for (let i = 0; i < this.list.list.length; i++) {
            if (this.list.list[i].type == "enemy" || this.list.list[i].type == "rock") {
                tab.push({
                    id: this.list.list[i].id,
                    x: this.list.list[i].x,
                    z: this.list.list[i].z,
                    type: this.list.list[i].type,
                })
            } else if (this.list.list[i].type == "player") {
                tab.push({
                    id: this.list.list[i].id,
                    x: this.list.list[i].x,
                    z: this.list.list[i].z,
                    type: this.list.list[i].type,
                    animation: this.animation.animName,
                    rotation: this.model.mesh.rotation.y,
                    delete: this.del
                })
                this.del = null
            }
        }
        this.ws.send(JSON.stringify(tab))
    }


}