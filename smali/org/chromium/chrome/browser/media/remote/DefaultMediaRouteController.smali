.class public Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;
.super Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;
.source "DefaultMediaRouteController.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mApplicationStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

.field private mCurrentItemId:Ljava/lang/String;

.field private mCurrentSessionId:Ljava/lang/String;

.field private mDebug:Z

.field private final mIntentCategory:Ljava/lang/String;

.field private mLastKnownStreamPosition:J

.field private mLocalVideoUri:Landroid/net/Uri;

.field private mMediaStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaStatusUpdateIntent:Landroid/app/PendingIntent;

.field private mPreferredTitle:Ljava/lang/String;

.field private mSeeking:Z

.field private mSessionState:I

.field private mSessionStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionStatusUpdateIntent:Landroid/app/PendingIntent;

.field private mStartPositionMillis:J

.field private mStreamDuration:J

.field private mStreamPositionTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;-><init>()V

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionState:I

    .line 98
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$1;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mApplicationStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    .line 117
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-cast-debug"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    .line 118
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mIntentCategory:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->processMediaStatusBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->configureNewSession(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamDuration:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->disconnect()V

    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->dumpIntentToLog(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mPreferredTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;J)J
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStartPositionMillis:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getSessionStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->processSessionStatusBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$902(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentItemId:Ljava/lang/String;

    return-object p1
.end method

.method private bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 786
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 797
    :goto_0
    return-object v0

    .line 788
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    const-string/jumbo v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 791
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 792
    if-nez v1, :cond_2

    const-string/jumbo v2, "null"

    .line 793
    :goto_2
    instance-of v5, v1, Landroid/os/Bundle;

    if-eqz v5, :cond_1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 794
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 792
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 796
    :cond_3
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private configureNewSession(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 825
    const-string/jumbo v0, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    .line 826
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionState:I

    .line 827
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Got a session id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 472
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->clearStreamState()V

    .line 473
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->clearMediaRoute()V

    .line 475
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 477
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 479
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mMediaStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mMediaStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 481
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mMediaStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 483
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->clearConnectionFailureCallback()V

    .line 485
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->stopWatchingRouteSelection()V

    .line 486
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->removeAllListeners()V

    .line 487
    return-void
.end method

.method private dumpIntentToLog(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 782
    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private getSessionStatus(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.intent.action.GET_SESSION_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$5;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendIntentToRoute(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    .line 319
    return-void
.end method

.method private installBroadcastReceivers()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$10;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$10;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 551
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.google.android.apps.chrome.videofling.RECEIVE_SESSION_STATUS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mIntentCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mMediaStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 559
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$11;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$11;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mMediaStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 567
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.google.android.apps.chrome.videofling.RECEIVE_MEDIA_STATUS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mIntentCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mMediaStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 573
    :cond_1
    return-void
.end method

.method private playUri(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLocalVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->getMediaType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->castMediaType(I)V

    .line 238
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->installBroadcastReceivers()V

    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 243
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Playing a new url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLocalVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->clearItemState()V

    .line 247
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->startPlayback(Ljava/lang/String;J)V

    .line 275
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_2

    .line 252
    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sending stream to app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCastReceiverId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLocalVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;J)V

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->startSession(ZLjava/lang/String;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    goto :goto_0
.end method

.method private processMediaStatusBundle(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 638
    if-nez p1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processMediaStatusBundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_2
    const-string/jumbo v0, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentItemId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const-string/jumbo v0, "android.media.intent.extra.ITEM_METADATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    const-string/jumbo v0, "android.media.intent.extra.ITEM_METADATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 649
    const-string/jumbo v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->updateTitle(Ljava/lang/String;)V

    .line 653
    :cond_3
    const-string/jumbo v0, "android.media.intent.extra.ITEM_STATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const-string/jumbo v0, "android.media.intent.extra.ITEM_STATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 656
    invoke-static {v0}, Landroid/support/v7/media/a;->a(Landroid/os/Bundle;)Landroid/support/v7/media/a;

    move-result-object v2

    .line 658
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "DefaultMediaRouteController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Received item status: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_4
    invoke-virtual {v2}, Landroid/support/v7/media/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->updateState(I)V

    .line 662
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPlayerState()Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    move-result-object v0

    sget-object v3, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PAUSED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPlayerState()Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    move-result-object v0

    sget-object v3, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPlayerState()Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    move-result-object v0

    sget-object v3, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->LOADING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne v0, v3, :cond_6

    .line 666
    :cond_5
    iput-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentItemId:Ljava/lang/String;

    .line 668
    invoke-virtual {v2}, Landroid/support/v7/media/a;->d()J

    move-result-wide v0

    .line 670
    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->updateDuration(J)V

    .line 673
    invoke-virtual {v2}, Landroid/support/v7/media/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLastKnownStreamPosition:J

    .line 674
    invoke-virtual {v2}, Landroid/support/v7/media/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamPositionTimestamp:J

    .line 675
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->updatePosition()V

    .line 677
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSeeking:Z

    if-eqz v0, :cond_6

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSeeking:Z

    .line 679
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onSeekCompleted()V

    .line 683
    :cond_6
    invoke-virtual {v2}, Landroid/support/v7/media/a;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 684
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 685
    const-string/jumbo v1, "android.media.status.extra.HTTP_STATUS_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 686
    const-string/jumbo v1, "android.media.status.extra.HTTP_STATUS_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 687
    const-string/jumbo v2, "DefaultMediaRouteController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "HTTP status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_7
    const-string/jumbo v1, "android.media.status.extra.HTTP_RESPONSE_HEADERS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    const-string/jumbo v1, "android.media.status.extra.HTTP_RESPONSE_HEADERS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 691
    const-string/jumbo v1, "DefaultMediaRouteController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HTTP headers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processSessionStatusBundle(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 604
    const-string/jumbo v0, "android.media.intent.extra.SESSION_STATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/E;->a(Landroid/os/Bundle;)Landroid/support/v7/media/E;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Landroid/support/v7/media/E;->a()I

    move-result v0

    .line 609
    iget v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionState:I

    if-ne v0, v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iput v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionState:I

    .line 612
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 614
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLocalVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mPreferredTitle:Ljava/lang/String;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStartPositionMillis:J

    invoke-direct {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->startPlayback(Ljava/lang/String;J)V

    goto :goto_0

    .line 621
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getUiListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 622
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPlayerState()Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->INVALIDATED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V

    goto :goto_1

    .line 624
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 625
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->INVALIDATED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V

    .line 628
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    .line 629
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->release()V

    goto :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private sendControlIntent(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V
    .locals 3

    .prologue
    .line 729
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    .line 730
    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sending intent to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string/jumbo v0, "sendControlIntent "

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->dumpIntentToLog(Ljava/lang/String;Landroid/content/Intent;)V

    .line 734
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DefaultMediaRouteController"

    const-string/jumbo v1, "Route is default, not sending"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_1
    :goto_0
    return-void

    .line 739
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;

    invoke-direct {v1, p0, p2, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;Landroid/content/Intent;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/content/Intent;Landroid/support/v7/media/i;)V

    goto :goto_0
.end method

.method private sendIntentToRoute(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 706
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 707
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    .line 708
    const-string/jumbo v0, "sendIntentToRoute "

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->dumpIntentToLog(Ljava/lang/String;Landroid/content/Intent;)V

    .line 709
    const-string/jumbo v0, "DefaultMediaRouteController"

    const-string/jumbo v1, "The current route is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, v3, v3}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 725
    :cond_1
    :goto_0
    return-void

    .line 715
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 716
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_3

    .line 717
    const-string/jumbo v0, "sendIntentToRoute "

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->dumpIntentToLog(Ljava/lang/String;Landroid/content/Intent;)V

    .line 718
    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The intent is not supported by the route: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_3
    if-eqz p2, :cond_1

    invoke-interface {p2, v3, v3}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 724
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendControlIntent(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    goto :goto_0
.end method

.method private startPlayback(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->setUnprepared()V

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.intent.action.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLocalVideoUri:Landroid/net/Uri;

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string/jumbo v1, "android.media.intent.extra.ITEM_STATUS_UPDATE_RECEIVER"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mMediaStatusUpdateIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v1, "android.media.intent.extra.ITEM_POSITION"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 332
    if-eqz p1, :cond_0

    .line 333
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string/jumbo v2, "android.media.metadata.TITLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v2, "android.media.intent.extra.ITEM_METADATA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 338
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$6;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$6;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendIntentToRoute(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    .line 352
    return-void
.end method

.method private startSession(ZLjava/lang/String;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.intent.action.START_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string/jumbo v1, "com.google.android.gms.cast.EXTRA_CAST_STOP_APPLICATION_WHEN_SESSION_ENDS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    const-string/jumbo v1, "android.media.intent.extra.SESSION_STATUS_UPDATE_RECEIVER"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionStatusUpdateIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v1, "com.google.android.gms.cast.EXTRA_CAST_APPLICATION_ID"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCastReceiverId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string/jumbo v1, "com.google.android.gms.cast.EXTRA_CAST_RELAUNCH_APPLICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    if-eqz p2, :cond_0

    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.google.android.gms.cast.EXTRA_DEBUG_LOGGING_ENABLED"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    :cond_1
    invoke-direct {p0, v0, p3}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendIntentToRoute(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    .line 298
    return-void
.end method

.method private updateDuration(J)V
    .locals 3

    .prologue
    .line 768
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamDuration:J

    .line 770
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getUiListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 771
    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onDurationUpdated(J)V

    goto :goto_0

    .line 773
    :cond_0
    return-void
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    .line 776
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getUiListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 777
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPosition()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onPositionChanged(J)V

    goto :goto_0

    .line 779
    :cond_0
    return-void
.end method


# virtual methods
.method public buildMediaRouteSelector()Landroid/support/v7/media/e;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Landroid/support/v7/media/f;

    invoke-direct {v0}, Landroid/support/v7/media/f;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCastReceiverId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForRemotePlayback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/f;->a(Ljava/lang/String;)Landroid/support/v7/media/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/f;->a()Landroid/support/v7/media/e;

    move-result-object v0

    return-object v0
.end method

.method public canPlayMedia(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mediaRouterInitializationFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    if-eqz p1, :cond_0

    .line 152
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public checkIfPlayableRemotely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;)V
    .locals 7

    .prologue
    .line 833
    new-instance v6, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;

    new-instance v0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;Ljava/lang/String;)V

    invoke-direct {v6, v0, p4}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;-><init>(Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v6, v0}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 850
    return-void
.end method

.method protected clearItemState()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 596
    invoke-super {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->clearItemState()V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentItemId:Ljava/lang/String;

    .line 598
    iput-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamPositionTimestamp:J

    .line 599
    iput-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamDuration:J

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSeeking:Z

    .line 601
    return-void
.end method

.method protected clearStreamState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLocalVideoUri:Landroid/net/Uri;

    .line 588
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    .line 589
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->clearItemState()V

    .line 590
    return-void
.end method

.method protected getCastReceiverId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string/jumbo v0, "CC1AD845"

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamDuration:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 6

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPlayerState()Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 357
    :goto_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamPositionTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSeeking:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLastKnownStreamPosition:J

    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 360
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLastKnownStreamPosition:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamPositionTimestamp:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 362
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamDuration:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 363
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamDuration:J

    .line 367
    :cond_0
    :goto_1
    return-wide v0

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :cond_2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLastKnownStreamPosition:J

    goto :goto_1
.end method

.method public getUriPlaying()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLocalVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 855
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLocalVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize()Z
    .locals 4

    .prologue
    const/high16 v3, 0x8000000

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mediaRouterInitializationFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mApplicationStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 127
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionStatusUpdateIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.apps.chrome.videofling.RECEIVE_SESSION_STATUS_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mIntentCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSessionStatusUpdateIntent:Landroid/app/PendingIntent;

    .line 134
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mMediaStatusUpdateIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_2

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.apps.chrome.videofling.RECEIVE_MEDIA_STATUS_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mIntentCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mMediaStatusUpdateIntent:Landroid/app/PendingIntent;

    .line 141
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onActivitiesDestroyed()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mApplicationStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 580
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->disconnect()V

    .line 581
    return-void
.end method

.method protected onRouteSelectedEvent(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 491
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Selected route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->castPlayRequested()V

    .line 496
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->remotePlaybackDeviceSelected(I)V

    .line 498
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->installBroadcastReceivers()V

    .line 500
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 501
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->showCastError(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->release()V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eq p2, v0, :cond_3

    .line 507
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->registerRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 508
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->clearStreamState()V

    .line 510
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLastKnownStreamPosition:J

    .line 512
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->notifyRouteSelected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method protected onRouteUnselectedEvent(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 522
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unselected route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLastKnownStreamPosition:J

    .line 526
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->clearStreamState()V

    .line 529
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentItemId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.intent.action.PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$3;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendIntentToRoute(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    .line 225
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLastKnownStreamPosition:J

    .line 226
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->updateState(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 404
    invoke-super {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->release()V

    .line 406
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getUiListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 407
    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onRouteUnselected(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onRouteUnselected()V

    .line 410
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->setMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V

    .line 412
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mediaRouterInitializationFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    :goto_1
    return-void

    .line 413
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 416
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->disconnect()V

    goto :goto_1

    .line 420
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.intent.action.STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$8;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$8;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendIntentToRoute(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    .line 434
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.intent.action.END_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendIntentToRoute(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    goto :goto_1
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentItemId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.intent.action.RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$2;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendIntentToRoute(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    .line 198
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->updateState(I)V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3

    .prologue
    .line 377
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPosition()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 381
    :cond_0
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLastKnownStreamPosition:J

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mSeeking:Z

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.intent.action.SEEK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v1, "android.media.intent.extra.ITEM_ID"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string/jumbo v1, "android.media.intent.extra.ITEM_POSITION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 388
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$7;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$7;-><init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendIntentToRoute(Landroid/content/Intent;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;)V

    goto :goto_0
.end method

.method public setRemoteVolume(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->p()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 164
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->currentRouteSupportsRemotePlayback()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->c(I)V

    .line 167
    :cond_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startCastingVideo()V
    .locals 5

    .prologue
    .line 802
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    .line 803
    if-nez v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 805
    :cond_0
    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getSourceUrl()Ljava/lang/String;

    move-result-object v1

    .line 807
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "DefaultMediaRouteController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startCastingVideo called, url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_1
    sget-boolean v2, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 812
    :cond_2
    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getFrameUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->castDomainAndRegistry(Ljava/lang/String;)V

    .line 814
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mLocalVideoUri:Landroid/net/Uri;

    .line 815
    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getStartPositionMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStartPositionMillis:J

    .line 816
    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStartPositionMillis:J

    invoke-direct {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->playUri(Ljava/lang/String;J)V

    goto :goto_0
.end method
