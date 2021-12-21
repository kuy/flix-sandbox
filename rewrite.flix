pub def rewrite(_args: Array[String]): Int32 & Impure = {
  import java.lang.Thread:sleep(Int64);
  "1" |> print;
  sleep(1000i64);
  "\r2" |> print;
  sleep(1000i64);
  "\r3" |> print;
  sleep(1000i64);
  "\r4" |> print;
  sleep(1000i64);
  "\r5" |> print;
  sleep(1000i64);
  0 // exit code
}

pub def typing(_args: Array[String]): Int32 & Impure = {
  import java.lang.Thread:sleep(Int64);
  "Hello " |> print;
  sleep(500i64);
  "World" |> print;
  sleep(100i64);
  "." |> print;
  sleep(100i64);
  "." |> print;
  sleep(100i64);
  "." |> print;
  0 // exit code
}
