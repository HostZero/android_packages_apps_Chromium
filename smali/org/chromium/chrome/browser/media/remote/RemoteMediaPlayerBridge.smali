.class public Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;
.super Ljava/lang/Object;
.source "RemoteMediaPlayerBridge.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mActive:Z

.field private mCookies:Ljava/lang/String;

.field private final mDebug:Z

.field private mFrameUrl:Ljava/lang/String;

.field private mIsPlayable:Z

.field private final mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

.field private mNativeRemoteMediaPlayerBridge:J

.field private final mOriginalFrameUrl:Ljava/lang/String;

.field private final mOriginalSourceUrl:Ljava/lang/String;

.field private mPauseRequested:Z

.field private mPosterBitmap:Landroid/graphics/Bitmap;

.field private final mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

.field private mRouteIsAvailable:Z

.field private mSeekLocation:J

.field private mSeekRequested:Z

.field private mSourceUrl:Ljava/lang/String;

.field private mStartPositionMillis:J

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mActive:Z

    .line 48
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;-><init>(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    .line 168
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-cast-debug"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mDebug:Z

    .line 170
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteMediaPlayerBridge"

    const-string/jumbo v1, "Creating RemoteMediaPlayerBridge"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_0
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J

    .line 172
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mOriginalSourceUrl:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mOriginalFrameUrl:Ljava/lang/String;

    .line 174
    iput-object p5, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mUserAgent:Ljava/lang/String;

    .line 176
    invoke-static {}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->instance()Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->getMediaRouteController(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 178
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteIsAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->onRouteAvailabilityChange()V

    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeGetTitle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPosterBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPosterBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativePauseLocal(J)V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)I
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeGetLocalPosition(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnCastStarting(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnCastStopping(J)V

    return-void
.end method

.method static synthetic access$1600(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSourceUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mCookies:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mFrameUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mFrameUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mStartPositionMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mActive:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPauseRequested:Z

    return v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mActive:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSeekRequested:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSeekLocation:J

    return-wide v0
.end method

.method static synthetic access$2302(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mIsPlayable:Z

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnError(J)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnSeekCompleted(J)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnRouteUnselected(J)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnPlaybackFinished(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnPlaying(J)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnPaused(J)V

    return-void
.end method

.method private static create(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;
    .locals 8

    .prologue
    .line 183
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private native nativeGetLocalPosition(J)I
.end method

.method private native nativeGetTitle(J)Ljava/lang/String;
.end method

.method private native nativeOnCastStarting(JLjava/lang/String;)V
.end method

.method private native nativeOnCastStopping(J)V
.end method

.method private native nativeOnError(J)V
.end method

.method private native nativeOnPaused(J)V
.end method

.method private native nativeOnPlaybackFinished(J)V
.end method

.method private native nativeOnPlaying(J)V
.end method

.method private native nativeOnRouteAvailabilityChanged(JZ)V
.end method

.method private native nativeOnRouteUnselected(J)V
.end method

.method private native nativeOnSeekCompleted(J)V
.end method

.method private native nativePauseLocal(J)V
.end method

.method private onPlayerCreated()V
    .locals 3

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteMediaPlayerBridge"

    const-string/jumbo v1, "onPlayerCreated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_1

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->addMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V

    goto :goto_0
.end method

.method private onPlayerDestroyed()V
    .locals 3

    .prologue
    .line 228
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteMediaPlayerBridge"

    const-string/jumbo v1, "onPlayerDestroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_1

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->removeMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V

    goto :goto_0
.end method

.method private onRouteAvailabilityChange()V
    .locals 4

    .prologue
    .line 298
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteIsAvailable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mIsPlayable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 300
    :goto_1
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnRouteAvailabilityChanged(JZ)V

    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private requestRemotePlayback(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteMediaPlayerBridge"

    const-string/jumbo v1, "requestRemotePlayback at t=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_1

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_1
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPauseRequested:Z

    .line 197
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSeekRequested:Z

    .line 198
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mStartPositionMillis:J

    .line 199
    invoke-static {}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->instance()Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->requestRemotePlayback(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V

    goto :goto_0
.end method

.method private requestRemotePlaybackControl()V
    .locals 3

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteMediaPlayerBridge"

    const-string/jumbo v1, "requestRemotePlaybackControl"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->instance()Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->requestRemotePlaybackControl(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V

    .line 210
    return-void
.end method

.method private setCookies(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 315
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mCookies:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mOriginalSourceUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mOriginalFrameUrl:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mUserAgent:Ljava/lang/String;

    new-instance v5, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$2;

    invoke-direct {v5, p0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$2;-><init>(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)V

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->checkIfPlayableRemotely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;)V

    goto :goto_0
.end method

.method private setNativePlayer()V
    .locals 3

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteMediaPlayerBridge"

    const-string/jumbo v1, "setNativePlayer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_1

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mActive:Z

    goto :goto_0
.end method

.method private setPosterBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPosterBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method protected destroy()V
    .locals 3

    .prologue
    .line 305
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteMediaPlayerBridge"

    const-string/jumbo v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->removeMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V

    .line 309
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J

    .line 310
    return-void
.end method

.method protected getCurrentPosition()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getDuration()I
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected isPlaying()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method protected pause()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPauseRequested:Z

    .line 285
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->isBeingCast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->pause()V

    .line 286
    :cond_0
    return-void
.end method

.method protected release()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->setMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V

    .line 269
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mActive:Z

    .line 270
    return-void
.end method

.method protected seekTo(I)V
    .locals 4

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSeekRequested:Z

    .line 291
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSeekLocation:J

    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->isBeingCast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->seekTo(J)V

    .line 295
    :cond_0
    return-void
.end method

.method protected setVolume(D)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPauseRequested:Z

    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->isBeingCast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->resume()V

    .line 280
    :cond_0
    return-void
.end method
