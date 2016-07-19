.class Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$2;
.super Ljava/lang/Object;
.source "PwsClientImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/physicalweb/BitmapHttpRequest$RequestCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;

.field final synthetic val$fetchIconCallback:Lorg/chromium/chrome/browser/physicalweb/PwsClient$FetchIconCallback;

.field final synthetic val$iconUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;Lorg/chromium/chrome/browser/physicalweb/PwsClient$FetchIconCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;

    iput-object p2, p0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$2;->val$fetchIconCallback:Lorg/chromium/chrome/browser/physicalweb/PwsClient$FetchIconCallback;

    iput-object p3, p0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$2;->val$iconUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 5

    .prologue
    .line 150
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 151
    const-string/jumbo v0, ""

    .line 152
    if-lez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    const-string/jumbo v1, "PhysicalWeb"

    const-string/jumbo v2, "Error requesting icon%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$2;->val$fetchIconCallback:Lorg/chromium/chrome/browser/physicalweb/PwsClient$FetchIconCallback;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$2;->val$iconUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/chromium/chrome/browser/physicalweb/PwsClient$FetchIconCallback;->onIconReceived(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 146
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$2;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
