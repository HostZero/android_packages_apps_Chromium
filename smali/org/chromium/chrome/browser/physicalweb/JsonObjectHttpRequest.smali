.class Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest;
.super Lorg/chromium/chrome/browser/physicalweb/HttpRequest;
.source "JsonObjectHttpRequest.java"


# instance fields
.field private final mJsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest$RequestCallback;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p3}, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;-><init>(Ljava/lang/String;Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;)V

    .line 33
    iput-object p2, p0, Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest;->mJsonObject:Lorg/json/JSONObject;

    .line 34
    return-void
.end method

.method private static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 74
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 77
    :cond_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic readInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest;->readInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected readInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 61
    invoke-static {p1}, Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToUrlConnection(Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 47
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "Accept"

    const-string/jumbo v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 52
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 53
    return-void
.end method
