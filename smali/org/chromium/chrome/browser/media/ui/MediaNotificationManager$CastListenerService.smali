.class public final Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;
.super Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;
.source "MediaNotificationManager.java"


# static fields
.field private static final NOTIFICATION_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    sget v0, Lorg/chromium/chrome/R$id;->remote_notification:I

    sput v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;->NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;-><init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$1;)V

    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 208
    sget v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;->NOTIFICATION_ID:I

    return v0
.end method


# virtual methods
.method protected final getManager()Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 214
    sget v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;->NOTIFICATION_ID:I

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->getManager(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->access$700(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 208
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->onDestroy()V

    return-void
.end method

.method public final bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
