# rock-push-game
This is a multiplayer logic game built using JavaScript and Three.js with server site built using Kotlin, Spark and PostgreSQL. The project was created in secondary school.

<details>
  <summary>Table of Contents</summary>
  <ul>
    <li><a href="#live-demo">Live Demo</a></li>
    <li><a href="#setup">Setup</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#technologies">Technologies</a></li>
  </ul>
</details>

## Live Demo

Explore the [live demo](http://rock-push-game.piechnik.ct8.pl/) of the rock-push-game app.

## Setup

#### To get a production version of this project up and running on your local machine, follow these steps:

1. Download the latest JAR file of the application: 

    - Go to the [Releases](https://github.com/piechnikk/rock-push-game/releases) section of my GitHub repository.

    - Find the latest release version and click on it to open the release page.

    - Look for the downloadable JAR file attached to the release (usually named something like `rock-push-game-v0.1.0.jar`).

    - Download the JAR file by clicking on it.

2. Create a PostgreSQL database named `rock-push-game` and import from lvls/database.sql file.

3. Run the application:
   - Open a terminal or command prompt.

   - Navigate to the directory where you downloaded the JAR file.

   - Run the application using the following command:
     ```sh
     java -jar rock-push-game-v0.1.0.jar
     ```

#### To set up a development version of this project, follow these steps:

1. Clone the repository: 
    ```
    git clone https://github.com/piechnikk/rock-push-game.git
    ```
2. Create a PostgreSQL database named `rock-push-game` and import from lvls/database.sql file.

3. Navigate to the client directory: 
    ```
    cd rock-push-game/client
    ```
4. Install the client dependencies using npm:
    ```
    npm install
    ```
5. Build the Node.js application using the following command:
    ```
    npm run build
    ```
6. Copy the contents of the `client/dist` directory and paste them into the `server/src/main/resources/public` directory

7. Open the server directory in Kotlin IDE (i.e. IntelliJ IDEA) and run `server/src/main/kotlin/app.kt`

## Usage

Open your preferred web browser and navigate to `http://localhost:5000` to access the running application. You have to move stones and destroy crates to get to the coin. Whoever gets there first wins.

#### CONTROLS
- wasd - movement

#### INTERFACE
![waiting](https://github.com/piechnikk/rock-push-game/assets/51060535/8b6098e4-af44-46eb-94b1-3b756751812f)
![game interface](https://github.com/piechnikk/rock-push-game/assets/51060535/3cea82c2-6dd4-413e-89f2-4f3396c74f16)
![you won](https://github.com/piechnikk/rock-push-game/assets/51060535/1742211a-648a-4a79-a35a-0c5609640e02)
![you lost](https://github.com/piechnikk/rock-push-game/assets/51060535/c2d5e115-cb62-4c85-863c-0cf9367367b0)

## Technologies

#### CLIENT
<div>
    <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" alt="HTML5"> 
    <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white" alt="CSS3">
    <img src="https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E" alt="JavaScript">
    <img src="https://img.shields.io/badge/Three%20js-black?style=for-the-badge&logo=three.js&logoColor=white" alt="Three.js">
</div>

#### SERVER
<div>
    <img src="https://img.shields.io/badge/Kotlin-0095D5?&style=for-the-badge&logo=kotlin&logoColor=white" alt="Kotlin"> 
    <img src="https://img.shields.io/badge/Apache_Spark-FFFFFF?style=for-the-badge&logo=apachespark&logoColor=#E35A16" alt="Apache Spark">
    <img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white" alt="PostgreSQL">
</div>

---

**Note**: This project was created in secondary school and serves as an example of a Three.js game.
