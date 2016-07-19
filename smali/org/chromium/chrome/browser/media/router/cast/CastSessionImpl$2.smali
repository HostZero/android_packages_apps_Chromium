.class Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;
.super Ljava/lang/Object;
.source "CastSessionImpl.java"

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$namespace:Ljava/lang/String;

.field final synthetic val$sequenceNumber:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;->val$namespace:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;->val$clientId:Ljava/lang/String;

    iput p4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;->val$sequenceNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to send the message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const-string/jumbo v0, "urn:x-cast:com.google.cast.media"

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;->val$namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$200(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;->val$clientId:Ljava/lang/String;

    iget v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;->val$sequenceNumber:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->onAppMessageSent(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/o;)V
    .locals 0

    .prologue
    .line 330
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
