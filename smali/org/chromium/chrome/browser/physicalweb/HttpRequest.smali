.class abstract Lorg/chromium/chrome/browser/physicalweb/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mCallback:Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;

.field private final mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->mUrl:Ljava/net/URL;

    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "This is not a http or https URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p2, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->mCallback:Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/physicalweb/HttpRequest;)Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->mCallback:Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;

    return-object v0
.end method


# virtual methods
.method protected abstract readInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 64
    .line 67
    const/4 v3, 0x0

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->writeToUrlConnection(Ljava/net/HttpURLConnection;)V

    .line 74
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 75
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->readInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    .line 89
    :goto_0
    new-instance v3, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;-><init>(Lorg/chromium/chrome/browser/physicalweb/HttpRequest;Ljava/lang/Exception;Ljava/lang/Object;I)V

    invoke-static {v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    return-void

    .line 77
    :catch_0
    move-exception v0

    move v2, v3

    move-object v3, v1

    .line 80
    :goto_1
    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v0

    .line 80
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 77
    :catch_1
    move-exception v2

    move-object v5, v2

    move v2, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_1

    :cond_1
    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_0

    :cond_2
    move-object v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_0
.end method

.method protected abstract writeToUrlConnection(Ljava/net/HttpURLConnection;)V
.end method
