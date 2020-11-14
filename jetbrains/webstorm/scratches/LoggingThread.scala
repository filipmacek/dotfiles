import cats.effect.{ContextShift, IO, Timer}
import io.filipmacek.eagle.util.Logging._

import scala.concurrent.duration._
import scala.concurrent.ExecutionContext
import io.chrisdavenport.log4cats.slf4j.Slf4jLogger


implicit val timer:Timer[IO]=IO.timer(ExecutionContext.global)
implicit val cs:ContextShift[IO] = IO.contextShift(ExecutionContext.global)
implicit val logger = Slf4jLogger.getLogger[IO]

val action=logThread(for{
  _ <- IO(println("Hello from action. Starting work"))
  _ <- Timer[IO].sleep(2 seconds)
  _ <- IO(println("Finished"))
}yield (),"example")

action.unsafeRunSync()
