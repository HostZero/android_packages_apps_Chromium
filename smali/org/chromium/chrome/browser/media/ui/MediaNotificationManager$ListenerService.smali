.class abstract Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;
.super Landroid/app/Service;
.source "MediaNotificationManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;-><init>()V

    return-void
.end method

.method private processAction(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;)V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    const/16 v2, 0x3e9

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_0
    const-string/jumbo v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 115
    if-nez v0, :cond_2

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 118
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 129
    :sswitch_0
    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;
    invoke-static {p2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz v0, :cond_3

    .line 130
    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPlay(I)V
    invoke-static {p2, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$300(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    goto :goto_0

    .line 120
    :sswitch_1
    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPlay(I)V
    invoke-static {p2, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$300(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    goto :goto_0

    .line 124
    :sswitch_2
    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPause(I)V
    invoke-static {p2, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$400(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    goto :goto_0

    .line 132
    :cond_3
    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPause(I)V
    invoke-static {p2, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$400(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    goto :goto_0

    .line 139
    :cond_4
    const-string/jumbo v1, "MediaNotificationManager.ListenerService.STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onStop(I)V
    invoke-static {p2, v3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$500(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    .line 142
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->stopSelf()V

    goto :goto_0

    .line 143
    :cond_5
    const-string/jumbo v1, "MediaNotificationManager.ListenerService.PLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPlay(I)V
    invoke-static {p2, v3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$300(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    goto :goto_0

    .line 145
    :cond_6
    const-string/jumbo v1, "MediaNotificationManager.ListenerService.PAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPause(I)V
    invoke-static {p2, v3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$400(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    goto :goto_0

    .line 147
    :cond_7
    const-string/jumbo v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/16 v0, 0x3ea

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPause(I)V
    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$400(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method private processIntent(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->getManager()Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onServiceStarted(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;)V
    invoke-static {v1, p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$200(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;)V

    .line 102
    invoke-direct {p0, p1, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->processAction(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;)V

    .line 103
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract getManager()Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 78
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->getManager()Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onServiceDestroyed()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$000(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->processIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->stopSelf()V

    .line 88
    :cond_0
    const/4 v0, 0x2

    return v0
.end method
