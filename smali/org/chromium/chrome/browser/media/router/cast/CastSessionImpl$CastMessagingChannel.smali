.class Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$CastMessagingChannel;
.super Ljava/lang/Object;
.source "CastSessionImpl.java"

# interfaces
.implements Lcom/google/android/gms/cast/k;


# instance fields
.field private final mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$CastMessagingChannel;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    .line 50
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Received message from Cast device: namespace=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\" message=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$CastMessagingChannel;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getMessageHandler()Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->onMessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
