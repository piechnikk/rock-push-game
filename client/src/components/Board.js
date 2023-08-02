import * as THREE from 'three';
import floortexture from "./assets/mats/floor.jpg"
import walltexture from "./assets/mats/wall.jpg"
import rocktexture from "./assets/mats/rock.png"
import woodtexture from "./assets/mats/wood.jpg"
import cointexture from "./assets/mats/coin.png"



export default class Board {
    constructor(scene, boarddata) {
        this.scene = scene
        this.list = boarddata
        this.meshcoin = null
        this.enemyTab = []
        this.floorCreater()
        this.wallCreater()
        this.rockCreater()
        this.woodCreater()
        this.treasureCreater()

        // this.playerposition()
    }
    floorCreater() {
        var texture = new THREE.TextureLoader().load(floortexture);
        texture.wrapS = THREE.RepeatWrapping;
        texture.wrapT = THREE.RepeatWrapping;
        texture.repeat.set(21, 11);
        var geometry1 = new THREE.PlaneGeometry(1050, 550);
        var material1 = new THREE.MeshPhongMaterial({
            specular: 0xffffff,
            shininess: 1,
            side: THREE.DoubleSide,
            map: texture,
        })

        var plane = new THREE.Mesh(geometry1, material1);
        plane.receiveShadow = true
        this.scene.add(plane);
        plane.position.set(0, 0, 0)
        plane.rotation.x = 0.5 * Math.PI
    }
    wallCreater() {
        var geometry = new THREE.BoxGeometry(50, 100, 50);
        var material = new THREE.MeshPhongMaterial({
            shininess: 20,
            side: THREE.DoubleSide,
            map: new THREE.TextureLoader().load(walltexture),
        })
        for (let i = 0; i < this.list.length; i++) {
            if (this.list[i].type == "wall") {
                var cube = new THREE.Mesh(geometry, material);
                cube.position.set((50 * this.list[i].x), 50, (50 * this.list[i].z))
                this.scene.add(cube);
                if (this.list[i].x != 0) {
                    var cube = new THREE.Mesh(geometry, material);
                    cube.position.set((50 * -this.list[i].x), 50, (50 * -this.list[i].z))
                    this.scene.add(cube);
                }

            }
        }
    }
    rockCreater() {
        var geometry = new THREE.BoxGeometry(40, 80, 40);
        var material = new THREE.MeshPhongMaterial({
            shininess: 20,
            side: THREE.DoubleSide,
            map: new THREE.TextureLoader().load(rocktexture),
        })
        for (let i = 0; i < this.list.length; i++) {
            if (this.list[i].type == "rock") {
                var cube = new THREE.Mesh(geometry, material);
                cube.position.set((50 * this.list[i].x), 50, (50 * this.list[i].z))
                this.scene.add(cube);
                this.list[i].mesh = cube
                if (this.list[i].x != 0) {
                    var cube = new THREE.Mesh(geometry, material);
                    cube.position.set((50 * -this.list[i].x), 50, (50 * -this.list[i].z))
                    this.enemyTab[this.list[i].id] = { mesh: cube, x: this.list[i].x, z: this.list[i].z }
                    this.scene.add(cube);
                }

            }
        }
    }
    woodCreater() {
        var geometry = new THREE.BoxGeometry(40, 80, 40);
        var material = new THREE.MeshPhongMaterial({
            shininess: 20,
            side: THREE.DoubleSide,
            map: new THREE.TextureLoader().load(woodtexture),
        })
        for (let i = 0; i < this.list.length; i++) {
            if (this.list[i].type == "enemy") {
                var cube = new THREE.Mesh(geometry, material);
                cube.position.set((50 * this.list[i].x), 50, (50 * this.list[i].z))
                this.scene.add(cube);
                this.list[i].mesh = cube
                if (this.list[i].x != 0) {
                    var cube = new THREE.Mesh(geometry, material);
                    cube.position.set((50 * -this.list[i].x), 50, (50 * -this.list[i].z))
                    this.enemyTab[this.list[i].id] = { mesh: cube, x: this.list[i].x, z: this.list[i].z }
                    this.scene.add(cube);
                }
            }
        }
    }
    treasureCreater() {
        var geometry = new THREE.CylinderGeometry(18, 18, 5, 24);
        var material = new THREE.MeshPhongMaterial({
            color: "0xffffff",
            shininess: 20,
            side: THREE.DoubleSide,
            map: new THREE.TextureLoader().load(cointexture),
        })
        for (let i = 0; i < this.list.length; i++) {
            if (this.list[i].type == "treasure") {
                this.meshcoin = new THREE.Mesh(geometry, material);
                this.meshcoin.position.set((50 * this.list[i].x), 50, (50 * this.list[i].z))
                this.meshcoin.rotation.x += 0.5 * Math.PI
                this.scene.add(this.meshcoin);

            }
        }
    }
    // playerposition() {
    //     for (let i = 0; i < this.list.length; i++) {
    //         if (this.list[i].type == "player") {
    //             enemyTab[this.list[i].id] = { mesh: "mesh", x: this.list[i].x, z: this.list[i].z }
    //         }
    //     }
    // }



}