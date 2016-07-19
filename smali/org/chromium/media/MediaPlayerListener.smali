.class Lorg/chromium/media/MediaPlayerListener;
.super Ljava/lang/Object;
.source "MediaPlayerListener.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNativeMediaPlayerListener:J


# direct methods
.method private constructor <init>(JLandroid/content/Context;)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    .line 39
    iput-wide p1, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    .line 40
    iput-object p3, p0, Lorg/chromium/media/MediaPlayerListener;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private static create(JLandroid/content/Context;Lorg/chromium/media/MediaPlayerBridge;)Lorg/chromium/media/MediaPlayerListener;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lorg/chromium/media/MediaPlayerListener;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/media/MediaPlayerListener;-><init>(JLandroid/content/Context;)V

    .line 108
    if-eqz p3, :cond_0

    .line 109
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 110
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 111
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 112
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 113
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 114
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 116
    :cond_0
    return-object v0
.end method

.method private native nativeOnBufferingUpdate(JI)V
.end method

.method private native nativeOnMediaError(JI)V
.end method

.method private native nativeOnMediaInterrupted(J)V
.end method

.method private native nativeOnMediaPrepared(J)V
.end method

.method private native nativeOnPlaybackComplete(J)V
.end method

.method private native nativeOnSeekComplete(J)V
.end method

.method private native nativeOnVideoSizeChanged(JII)V
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1, p2}, Lorg/chromium/media/MediaPlayerListener;->nativeOnBufferingUpdate(JI)V

    .line 91
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaPlayerListener;->nativeOnPlaybackComplete(J)V

    .line 96
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 46
    sparse-switch p2, :sswitch_data_0

    .line 74
    :goto_0
    :sswitch_0
    iget-wide v2, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/media/MediaPlayerListener;->nativeOnMediaError(JI)V

    .line 75
    return v1

    .line 48
    :sswitch_1
    sparse-switch p3, :sswitch_data_1

    .line 56
    const/4 v0, 0x0

    .line 57
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 51
    goto :goto_0

    .line 61
    :sswitch_3
    const/4 v0, 0x2

    .line 62
    goto :goto_0

    .line 64
    :sswitch_4
    const/4 v0, 0x4

    .line 65
    goto :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_3
    .end sparse-switch

    .line 48
    :sswitch_data_1
    .sparse-switch
        -0x3ef -> :sswitch_2
        -0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaPlayerListener;->nativeOnMediaPrepared(J)V

    .line 101
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaPlayerListener;->nativeOnSeekComplete(J)V

    .line 86
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/chromium/media/MediaPlayerListener;->nativeOnVideoSizeChanged(JII)V

    .line 81
    return-void
.end method
