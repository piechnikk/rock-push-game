import { MD2Loader } from 'three/examples/jsm/loaders/MD2Loader.js';
import { Mesh, TextureLoader, MeshPhongMaterial, Box3 } from "three"
import playerTex from "./assets/models/player_blue.png"
import enemyTex from "./assets/models/player_red.png"

export default class Model {
    constructor(scene, manager, boarddata, isEnemy = false) {
        this.scene = scene;
        this.isEnemy = isEnemy
        this.mesh = null;
        this.texture = null
        this.manager = manager;
        this.geometry = null;
        this.list = boarddata.list;
        this.moves = boarddata.moves;
        this.x = null;
        this.z = null
    }

    load(path) {
        //ustawianie pozycji gracza
        for (let i = 0; i < this.list.length; i++) {
            if (this.list[i].type == "player") {
                if (this.isEnemy) {
                    this.x = -this.list[i].x
                    this.z = -this.list[i].z
                    this.texture = enemyTex

                } else {
                    this.x = this.list[i].x
                    this.z = this.list[i].z
                    this.texture = playerTex

                }
            }
        }
        //ustawianie liczby ruchów
        document.getElementById("moves").innerText = this.moves

        new MD2Loader(this.manager).load(
            path,
            geometry => {

                this.geometry = geometry;

                this.mesh = new Mesh(geometry, new MeshPhongMaterial({
                    map: new TextureLoader().load(this.texture), // dowolny plik png, jpg
                    morphTargets: true // animowanie materiału modelu
                }))
                var meshY = new Box3().setFromObject(this.mesh).getSize().y / 2;
                this.mesh.position.set((50 * this.x), meshY, (50 * this.z))
                this.scene.add(this.mesh);
                console.log(this.geometry.animations) // tu powinny być widoczne animacje

            },

        );

    }

    unload() {
        this.scene.remove(this.mesh); // ew funkcja do usunięcia modelu ze sceny
    }
}