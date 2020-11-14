import cats.effect.{ContextShift, IO, Timer}

import scala.concurrent.ExecutionContext
import scala.concurrent.duration._
implicit val timer:Timer[IO]=IO.timer(ExecutionContext.global)
implicit val cs:ContextShift[IO] = IO.contextShift(ExecutionContext.global)
import cats.implicits._
//
//val action =for{
//  _ <- IO(println("starting"))
//  _ <- timer.sleep(3 seconds)
//  _ <- IO.raiseError(new Exception("booom"))
//  _ <- IO(println("Hello again"))
//} yield ()
//action.recoverWith {
//  case e => IO {
//    println("Error with boom")
//    ()
//  }
//}
//
//val failedIO:IO[Int] = IO.raiseError(new Exception("boom"))
//failedIO.recoverWith({
//  case e => IO {
//    println("Something went wrong")
//    62
//  }
//}).unsafeRunSync()
{
  timer.sleep(3 seconds).unsafeRunAsync { case Left(_) => println("ERRROR")
  case Right(_) => println("OK")
  }
  println("CIAO CIAOO")
  println("booooooo")


}