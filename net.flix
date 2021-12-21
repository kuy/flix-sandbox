pub def request(_args: Array[String]): Int32 & Impure = {
  import java.net.URI:create(String) as createURI;
  import java.net.http.HttpClient:newHttpClient();
  import java.net.http.HttpClient.send(##java.net.http.HttpRequest, ##java.net.http.HttpResponse$BodyHandler) as clientSend;
  import java.net.http.HttpRequest:newBuilder() as newRequestBuilder;
  import java.net.http.HttpRequest$Builder.GET() as makeGetRequest;
  import java.net.http.HttpRequest$Builder.uri(##java.net.URI) as setUri;
  import java.net.http.HttpRequest$Builder.build() as finish;
  import java.net.http.HttpResponse$BodyHandlers:ofString() as bodyHandlerOfString;
  import java.net.http.HttpResponse.body() as getBody;
  import java.net.http.HttpResponse.statusCode() as getStatusCode;

  let client = newHttpClient();

  let uri = createURI("https://www.google.com");

  let builder = newRequestBuilder();
  makeGetRequest(builder);
  setUri(builder, uri);
  let req = finish(builder);
  let handler = bodyHandlerOfString();

  let res = clientSend(client, req, handler);
  let body = getBody(res) as String;
  println(body);
  let code = getStatusCode(res);
  println(code);
  0 // exit code
}
