import com.google.gson.Gson
import org.eclipse.jetty.websocket.api.Session
import spark.*
import spark.Spark.*
import spark.kotlin.port
import java.sql.DriverManager

var games = mutableListOf<MutableList<Session>>()
var random = ""

fun main() {
    port(52780)
    webSocket("/ws/", ServerSocket::class.java)
    staticFileLocation("/public")
    get("/") { req, res -> index(req, res) } // get pliku index.html
    post("/level") {req, res -> level(req, res)} // pobranie danych levelu
}

fun index(req: Request, res:Response){
    res.type("text/html")
    res.redirect("index.html")
}

fun returnOpponent(who:Session):Session?{
    var opponent:Session? = null
    for(i in (0 until games.size)){
        if(games[i].size==2) {
            if (who == games[i][0]) {
                opponent = games[i][1]
                break
            } else if (who == games[i][1]) {
                opponent = games[i][0]
                break
            }
        }
    }
    return opponent
}

fun level(req:Request, res:Response):String? {
    try {
        if(random==""){
            randomLevel()
        }
        return Gson().toJson(random)
    } catch (e: Exception) {
        println(e.message)
        return (e.message)
    }
}
fun randomLevel(){
    val conn = DriverManager.getConnection(Credentials.URL, Credentials.USER, Credentials.PASS)
    val stmt = conn.createStatement()
    val rs = stmt.executeQuery("SELECT * FROM levels ORDER BY RANDOM() LIMIT 1")
    while (rs.next()) {
        random = rs.getString("data")
    }
    conn.close()
}