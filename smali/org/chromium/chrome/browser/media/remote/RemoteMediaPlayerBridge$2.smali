.class Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$2;
.super Ljava/lang/Object;
.source "RemoteMediaPlayerBridge.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$2;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$2;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # setter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mIsPlayable:Z
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$2302(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Z)Z

    .line 323
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$2;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # setter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSourceUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1602(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$2;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # setter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mFrameUrl:Ljava/lang/String;
    invoke-static {v0, p3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1802(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$2;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->onRouteAvailabilityChange()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$100(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)V

    .line 326
    return-void
.end method
