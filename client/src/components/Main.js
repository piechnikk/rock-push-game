import {
    Scene,
    LoadingManager,
    Clock,
    Vector3,
    AmbientLight
} from 'three';
import Board from './Board';
import Renderer from './Renderer';
import Camera from './Camera';
import Model from "./Model"
import Keyboard from "./Keyboard"
import Animation from "./Animation"
import Config from './Config';
import Stats from 'three/examples/jsm/libs/stats.module.js';
import playerMD2 from "./assets/models/player.md2"

export default class Main {
    constructor(container, boarddata, nick) {
        // właściwości klasy
        this.container = container;
        this.list = boarddata
        this.nick = nick
        this.enemyNick = null
        this.scene = new Scene();
        this.renderer = new Renderer(this.scene, container);
        this.camera = new Camera(10, window.innerWidth, window.innerHeight, this.renderer);

        this.board = new Board(this.scene, this.list.list)

        this.isLoaded = null
        this.animation = null
        // grid - testowa siatka na podłoże modelu
        //stats - statystyki wydajności
        this.stats = new Stats();
        this.stats.showPanel(0); // 0: fps, 1: ms, 2: mb
        document.body.appendChild(this.stats.dom);
        // zegar - vide lekcja 4
        this.clock = new Clock()
        // manager loadingu, pozwala monitorować progress oraz fakt zakończenia ładowania
        this.manager = new LoadingManager();
        // model
        this.model = new Model(this.scene, this.manager, this.list);
        this.model.load(playerMD2);

        this.manager.onLoad = () => {
            this.enemyManager = new LoadingManager();
            // model przeciwnika
            this.enemy = new Model(this.scene, this.enemyManager, this.list, true);
            this.enemy.load(playerMD2);
            this.enemyManager.onLoad = () => {
                this.enemyAnimation = new Animation(this.enemy.mesh)
                this.enemyAnimation.playAnim("stand")
                // kawiatura
                this.keyboard = new Keyboard(window, this.animation, this.model, this.list, this.scene, this.board, this.enemy, this.enemyAnimation, this.nick, this.enemyNick);
            };


            console.log("MODEL LOADED!!!")
            // animacje
            this.animation = new Animation(this.model.mesh)
            this.animation.playAnim("stand")
        };

        let light = new AmbientLight();
        this.scene.add(light);

        let dys = this
        setTimeout(function () {
            dys.render();
        }, 2000)
    }

    render() {
        // początek pomiaru wydajności
        this.stats.begin()
        this.renderer.render(this.scene, this.camera);

        // delta do animacji
        var delta = this.clock.getDelta();
        // wykonanie funkcji update w module Animations - zobacz do pliku Animations
        if (this.animation) this.animation.update(delta)
        if (this.enemyAnimation) this.enemyAnimation.update(delta)
        this.renderer.render(this.scene, this.camera);

        this.board.meshcoin.rotation.z += 0.05

        if (this.model.mesh) {
            if (Config.moveLeft == 2) {
                this.model.mesh.rotation.y = 1 * Math.PI
                this.model.mesh.translateX(2)
                Config.value.left++
                if (Config.value.left == 25) {
                    Config.moveLeft = 1
                    Config.value.left = 0
                    this.animation.playAnim("stand")
                    console.log(this.enemyNick)
                }
            }
            if (Config.moveRight == 2) {
                this.model.mesh.rotation.y = 0
                this.model.mesh.translateX(2)
                Config.value.right++
                if (Config.value.right == 25) {
                    Config.moveRight = 1
                    Config.value.right = 0
                    this.animation.playAnim("stand")
                }
            }
            if (Config.moveUp == 2) {
                this.model.mesh.rotation.y = 0.5 * Math.PI
                this.model.mesh.translateX(2)
                Config.value.up++
                if (Config.value.up == 25) {
                    Config.moveUp = 1
                    Config.value.up = 0
                    this.animation.playAnim("stand")
                }
            }
            if (Config.moveDown == 2) {
                this.model.mesh.rotation.y = 1.5 * Math.PI
                this.model.mesh.translateX(2)
                Config.value.down++
                if (Config.value.down == 25) {
                    Config.moveDown = 1
                    Config.value.down = 0
                    this.animation.playAnim("stand")
                }
            }
        }

        if (this.enemy.mesh) {
            if (Config.enemyLeft == 1) {
                this.enemy.mesh.rotation.y = 1 * Math.PI
                this.enemy.mesh.translateX(2)
                Config.enemyValue.left++
                if (Config.enemyValue.left == 25) {
                    Config.enemyLeft = 0
                    Config.enemyValue.left = 0
                    this.enemyAnimation.playAnim("stand")
                }
            }
            if (Config.enemyRight == 1) {
                this.enemy.mesh.rotation.y = 0
                this.enemy.mesh.translateX(2)
                Config.enemyValue.right++
                if (Config.enemyValue.right == 25) {
                    Config.enemyRight = 0
                    Config.enemyValue.right = 0
                    this.enemyAnimation.playAnim("stand")
                }
            }
            if (Config.enemyUp == 1) {
                this.enemy.mesh.rotation.y = 0.5 * Math.PI
                this.enemy.mesh.translateX(2)
                Config.enemyValue.up++
                if (Config.enemyValue.up == 25) {
                    Config.enemyUp = 0
                    Config.enemyValue.up = 0
                    this.enemyAnimation.playAnim("stand")
                }
            }
            if (Config.enemyDown == 1) {
                this.enemy.mesh.rotation.y = 1.5 * Math.PI
                this.enemy.mesh.translateX(2)
                Config.enemyValue.down++
                if (Config.enemyValue.down == 25) {
                    Config.enemyDown = 0
                    Config.enemyValue.down = 0
                    this.enemyAnimation.playAnim("stand")
                }
            }
        }
        // koniec statystyk
        this.stats.end()

        requestAnimationFrame(this.render.bind(this));
    }
}