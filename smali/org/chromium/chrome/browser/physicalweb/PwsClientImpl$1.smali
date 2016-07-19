.class Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$1;
.super Ljava/lang/Object;
.source "PwsClientImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest$RequestCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;

.field final synthetic val$resolveScanCallback:Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;

    iput-object p2, p0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$1;->val$resolveScanCallback:Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 5

    .prologue
    .line 105
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 106
    const-string/jumbo v0, ""

    .line 107
    if-lez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    const-string/jumbo v1, "PhysicalWeb"

    const-string/jumbo v2, "Error making request to PWS%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$1;->val$resolveScanCallback:Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;->onPwsResults(Ljava/util/Collection;)V

    .line 112
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 99
    # invokes: Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;->parseResolveScanResponse(Lorg/json/JSONObject;)Ljava/util/Collection;
    invoke-static {p1}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;->access$000(Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$1;->val$resolveScanCallback:Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;->onPwsResults(Ljava/util/Collection;)V

    .line 101
    return-void
.end method
