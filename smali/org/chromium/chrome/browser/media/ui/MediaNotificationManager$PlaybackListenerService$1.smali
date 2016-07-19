.class Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaNotificationManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService$1;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
