import { PerspectiveCamera, Vector3 } from 'three';


export default class Camera extends PerspectiveCamera {
    constructor(fov, width, height, renderer) {
        super(fov, width / height, 0.1, 10000)

        this.width = width
        this.height = height
        this.position.set(0, 4000, 1000);
        this.lookAt(new Vector3(0, 0, 0))
        this.updateSize(renderer);
        // resize
        window.addEventListener('resize', () => this.updateSize(renderer), false);
    }

    updateSize(renderer) {
        // aspect ratio kamery
        this.aspect = renderer.domElement.width / renderer.domElement.height;
        this.updateProjectionMatrix();
    }


}


// import { PerspectiveCamera, Vector3 } from 'three';

// export default class Camera {
//     constructor(renderer) {
//         const width = renderer.domElement.width;
//         const height = renderer.domElement.height;

//         this.threeCamera = new PerspectiveCamera(10, width / height, 0.1, 10000);
//         this.threeCamera.position.set(0, 4000, 1000);
//         this.threeCamera.lookAt(new Vector3(0, 0, 0))

//         this.updateSize(renderer);

//         window.addEventListener('resize', () => this.updateSize(renderer), false);
//     }

//     updateSize(renderer) {

//         this.threeCamera.aspect = renderer.domElement.width / renderer.domElement.height;
//         this.threeCamera.updateProjectionMatrix();
//     }
// }