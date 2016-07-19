.class Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;
.super Ljava/lang/Object;
.source "CastSessionImpl.java"

# interfaces
.implements Lcom/google/android/gms/cast/B;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusUpdated()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$000(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/w;->a()Lcom/google/android/gms/cast/t;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/t;->b()I

    move-result v0

    .line 118
    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_3

    .line 120
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$100(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setPaused(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$100(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setActions(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 127
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$100(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->build()Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->show(Landroid/content/Context;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;)V

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 125
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$100(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setActions(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    goto :goto_2
.end method
