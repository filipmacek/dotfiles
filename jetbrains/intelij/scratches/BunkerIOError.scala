import cats.effect.{ContextShift, IO}

import scala.concurrent.ExecutionContext

// Needed for IO.start to do a logical thread fork
implicit val cs: ContextShift[IO] = IO.contextShift(ExecutionContext.global)

val launchMissiles: IO[Unit] = IO.raiseError(new Exception("boom!"))
val runToBunker = IO(println("To the bunker!!!"))

val action=for {
  fiber <- launchMissiles.start
  _ <- runToBunker.handleErrorWith { error =>
    // Retreat failed, cancel launch (maybe we should
    // have retreated to our bunker before the launch?)
    fiber.cancel *> IO.raiseError(error)
  }
  aftermath <- fiber.join
  _ <- IO(println("Everything is fine"))
} yield (println("FIne"))
