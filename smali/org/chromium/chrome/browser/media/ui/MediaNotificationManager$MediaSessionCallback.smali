.class final Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;
.super Landroid/support/v4/media/session/w;
.source "MediaNotificationManager.java"


# instance fields
.field private final mManager:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Landroid/support/v4/media/session/w;-><init>()V

    .line 392
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;->mManager:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$1;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;-><init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;)V

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;->mManager:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    const/16 v1, 0x3e9

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPause(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$400(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    .line 403
    return-void
.end method

.method public final onPlay()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;->mManager:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    const/16 v1, 0x3e9

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPlay(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$300(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V

    .line 398
    return-void
.end method
