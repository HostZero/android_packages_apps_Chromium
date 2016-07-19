.class public final Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;
.super Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;
.source "MediaNotificationManager.java"


# static fields
.field private static final NOTIFICATION_ID:I


# instance fields
.field private mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    sget v0, Lorg/chromium/chrome/R$id;->media_playback_notification:I

    sput v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;-><init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$1;)V

    .line 178
    new-instance v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService$1;-><init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 156
    sget v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->NOTIFICATION_ID:I

    return v0
.end method


# virtual methods
.method protected final getManager()Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    sget v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->NOTIFICATION_ID:I

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->getManager(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$700(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->onCreate()V

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    invoke-super {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->onDestroy()V

    .line 170
    return-void
.end method

.method public final bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
