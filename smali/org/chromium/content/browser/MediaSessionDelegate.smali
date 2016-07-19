.class public Lorg/chromium/content/browser/MediaSessionDelegate;
.super Ljava/lang/Object;
.source "MediaSessionDelegate.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field public static final DEFAULT_VOLUME_MULTIPLIER:D = 1.0

.field public static final DUCKING_VOLUME_MULTIPLIER:D = 0.20000000298023224


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFocusType:I

.field private mIsDucking:Z

.field private final mNativeMediaSessionDelegateAndroid:J


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mIsDucking:Z

    .line 41
    iput-object p1, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mContext:Landroid/content/Context;

    .line 42
    iput-wide p2, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    .line 43
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 61
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 62
    return-void
.end method

.method private static create(Landroid/content/Context;J)Lorg/chromium/content/browser/MediaSessionDelegate;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/chromium/content/browser/MediaSessionDelegate;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/MediaSessionDelegate;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private native nativeOnResume(J)V
.end method

.method private native nativeOnSetVolumeMultiplier(JD)V
.end method

.method private native nativeOnSuspend(JZ)V
.end method

.method private native nativeRecordSessionDuck(J)V
.end method

.method private requestAudioFocus(Z)Z
    .locals 1

    .prologue
    .line 53
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mFocusType:I

    .line 55
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaSessionDelegate;->requestAudioFocusInternal()Z

    move-result v0

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestAudioFocusInternal()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 65
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 67
    const/4 v2, 0x3

    iget v3, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mFocusType:I

    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 68
    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 73
    packed-switch p1, :pswitch_data_0

    .line 97
    :pswitch_0
    const-string/jumbo v0, "MediaSession"

    const-string/jumbo v1, "onAudioFocusChange called with unexpected value %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :goto_0
    return-void

    .line 75
    :pswitch_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mIsDucking:Z

    if-eqz v0, :cond_0

    .line 76
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnSetVolumeMultiplier(JD)V

    .line 78
    iput-boolean v4, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mIsDucking:Z

    goto :goto_0

    .line 80
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnResume(J)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnSuspend(JZ)V

    goto :goto_0

    .line 87
    :pswitch_3
    iput-boolean v2, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mIsDucking:Z

    .line 88
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeRecordSessionDuck(J)V

    .line 89
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnSetVolumeMultiplier(JD)V

    goto :goto_0

    .line 93
    :pswitch_4
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaSessionDelegate;->abandonAudioFocus()V

    .line 94
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    invoke-direct {p0, v0, v1, v4}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnSuspend(JZ)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
