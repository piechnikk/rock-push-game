import Config from './Config';

export default class Websocketer extends WebSocket {
    constructor(board, enemy, enemyAnimation, scene, enemyNick, nick) {
        super("ws://" + location.hostname + ":" + location.port + "/ws/")
        this.enemyNick = enemyNick
        this.board = board
        this.enemy = enemy
        this.enemyAnimation = enemyAnimation
        this.scene = scene
        this.onmessage = (e) => {
            if (e.data[0] == "[") {
                let tablica = JSON.parse(e.data)
                for (let i = 0; i < tablica.length; i++) {
                    if (tablica[i].type != "player" && (tablica[i].x != this.board.enemyTab[tablica[i].id].x || tablica[i].z != this.board.enemyTab[tablica[i].id].z)) {
                        this.board.enemyTab[tablica[i].id].mesh.position.x = (tablica[i].x * -50)
                        this.board.enemyTab[tablica[i].id].mesh.position.z = (tablica[i].z * -50)
                    } else if (tablica[i].type == "player") {
                        if (tablica[i].animation == "jump") {
                            this.enemyAnimation.playAnim("jump")
                            setTimeout(() => {
                                this.enemyAnimation.playAnim("stand")
                            }, 300)
                            this.enemy.mesh.rotation.y = tablica[i].rotation + Math.PI
                            if (tablica[i].delete != null) {
                                this.scene.remove(this.board.enemyTab[tablica[i].delete].mesh)
                                this.board.enemyTab[tablica[i].delete] == null
                            }
                        } else {
                            if (-tablica[i].x != this.enemy.x) {
                                this.enemy.mesh.position.x = 50 * this.enemy.x
                                this.enemy.mesh.position.z = 50 * this.enemy.z
                                if (-tablica[i].x > this.enemy.x) {
                                    Config.enemyRight = 1;
                                    this.enemyAnimation.playAnim("pain")
                                    console.log(this.enemyAnimation.animName);
                                    this.enemy.x += 1
                                } else if (-tablica[i].x < this.enemy.x) {
                                    Config.enemyLeft = 1;
                                    this.enemyAnimation.playAnim("pain")
                                    this.enemy.x -= 1
                                }
                            }
                            if (-tablica[i].z != this.enemy.z) {
                                this.enemy.mesh.position.x = 50 * this.enemy.x
                                this.enemy.mesh.position.z = 50 * this.enemy.z
                                if (-tablica[i].z > this.enemy.z) {
                                    Config.enemyDown = 1;
                                    this.enemyAnimation.playAnim("pain")
                                    this.enemy.z += 1
                                } else if (-tablica[i].z < this.enemy.z) {
                                    Config.enemyUp = 1;
                                    this.enemyAnimation.playAnim("pain")
                                    this.enemy.z -= 1
                                }
                            }
                        }
                    }
                }
            } else if (e.data == "przeciwnik") {
                console.log(e.data);
                Config.startGame = true
            } else if (e.data == "wygralem") {
                console.log(e.data);
                Config.enemyWin = true
            } else if (e.data == "przegralem") {
                console.log(e.data);
                Config.enemyWin = false
            } else {
                console.log(e.data)
            }
        }
    }
}