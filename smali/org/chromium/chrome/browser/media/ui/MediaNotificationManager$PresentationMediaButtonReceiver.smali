.class public final Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationMediaButtonReceiver;
.super Lorg/chromium/chrome/browser/media/ui/MediaButtonReceiver;
.source "MediaNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaButtonReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final getServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-class v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
