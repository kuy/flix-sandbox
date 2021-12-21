pub def hello(_args: Array[String]): Int32 & Impure = {
  import java.lang.Thread:sleep(Int64);
  "Hello" |> println;
  sleep(3000i64);
  "World" |> println;
  0 // exit code
}
