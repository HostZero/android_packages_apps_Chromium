.class Lorg/chromium/chrome/browser/physicalweb/BitmapHttpRequest;
.super Lorg/chromium/chrome/browser/physicalweb/HttpRequest;
.source "BitmapHttpRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/chromium/chrome/browser/physicalweb/BitmapHttpRequest$RequestCallback;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;-><init>(Ljava/lang/String;Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected readInputStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 53
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 54
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 57
    array-length v1, v0

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/BitmapHttpRequest;->readInputStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public writeToUrlConnection(Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
