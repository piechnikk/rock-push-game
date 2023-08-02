import './style.css';

import Main from './components/Main';
import Config from './components/Config';

function init(data) {
    document.getElementById("addnickbutton").addEventListener("click", function () {
        let nick = document.getElementById("addnickinput").value
        if (nick != "" && (nick.length >= 3 && nick.length <= 16)) {
            document.getElementById("logowanie").style.display = "none"
            document.getElementById("oczekiwanie1").style.display = "inline"
            document.getElementById("oczekiwanie2").style.display = "inline"
            document.getElementById("licznikdiv").style.display = "inline"


            let enemy = document.getElementById("napisy1")
            enemy.innerText = "Enemy"
            let player = document.getElementById("napisy2")
            player.innerText = nick
            let start = setInterval(function () {
                if (Config.startGame == true) {
                    setTimeout(function () {
                        document.getElementById("licznikdiv").innerText = "3"
                    }, 100)
                    setTimeout(function () {
                        document.getElementById("licznikdiv").innerText = "2"
                    }, 1100)
                    setTimeout(function () {
                        document.getElementById("licznikdiv").innerText = "1"
                    }, 2100)
                    setTimeout(function () {
                        document.getElementById("licznikdiv").style.display = ""
                        document.getElementById("oczekiwanie1").style.display = ""
                        document.getElementById("oczekiwanie2").style.display = ""
                    }, 3100)
                    clearInterval(start)
                }
            }, 10)
            let finish = setInterval(function () {
                if (Config.enemyWin != null || Config.youWin != null) {
                    let div = document.getElementById("wynik")
                    div.style.display = "inline"
                    if (Config.youWin == true) {
                        div.style.backgroundColor = "rgba(0,255,0,0.5)"
                        div.innerText = "You won!"
                        setTimeout(function () {
                            location.reload()
                        }, 2000)
                        clearInterval(finish)
                    } else if (Config.enemyWin == true || Config.youWin == false) {
                        div.style.backgroundColor = "rgba(255,0,0,0.5)"
                        div.innerText = "You lost!"
                        setTimeout(function () {
                            location.reload()
                        }, 2000)
                        clearInterval(finish)
                    }


                }
            }, 100)


            //div
            const container = document.getElementById('root');
            //main class object
            new Main(container, data, nick);
        } else {
            window.alert("Your name must be between 3 and 16 characters long.")

        }
    })

}

function loadProject() {
    fetch("/level", { method: "post" }) // fetch
        .then(response => response.json())
        .then(data => {
            let x = JSON.parse(data)
            console.log(x);
            init(x);
        })

    console.log("fetch load");
}
loadProject();

