import org.eclipse.jetty.websocket.api.*
import org.eclipse.jetty.websocket.api.annotations.*

@WebSocket
class ServerSocket {

    @OnWebSocketConnect
    fun connect(session: Session) {
        if(games.size == 0 || games[games.size-1].size == 2){
            games.add(mutableListOf<Session>())
        }else{
            randomLevel()
        }
        games[games.size-1].add(session)

        val opponent = returnOpponent(session)
        if(opponent !== null) {
            opponent.remote.sendString("przeciwnik")
            session.remote.sendString("przeciwnik")
        }else{
            session.remote.sendString("czekaj na przeciwnika")
        }
    }

    @OnWebSocketClose
    fun close(session: Session, statusCode: Int, reason: String) {
        val opponent = returnOpponent(session)
        if(opponent !== null)
            opponent.remote.sendString("odlaczyl")
    }

    @OnWebSocketMessage
    fun message(session: Session, message: String) {
        val opponent = returnOpponent(session)
        if(opponent !== null)
            opponent.remote.sendString(message)
    }
}