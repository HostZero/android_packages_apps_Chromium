.class public Lorg/chromium/chrome/browser/media/remote/RecordCastAction;
.super Ljava/lang/Object;
.source "RecordCastAction.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEVICE_TYPE_CAST_GENERIC:I = 0x0

.field public static final DEVICE_TYPE_CAST_YOUTUBE:I = 0x1

.field public static final DEVICE_TYPE_COUNT:I = 0x3

.field public static final DEVICE_TYPE_NON_CAST_YOUTUBE:I = 0x2

.field public static final FULLSCREEN_CONTROLS_COUNT:I = 0x3

.field public static final FULLSCREEN_CONTROLS_PAUSE:I = 0x1

.field public static final FULLSCREEN_CONTROLS_RESUME:I = 0x0

.field public static final FULLSCREEN_CONTROLS_SEEK:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castDefaultPlayerResult(Z)V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->nativeRecordCastDefaultPlayerResult(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public static castDomainAndRegistry(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "Cast.Sender.MediaFrameUrl"

    invoke-static {v0, p0}, Lorg/chromium/chrome/browser/rappor/RapporServiceBridge;->sampleDomainAndRegistryFromURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static castEndedTimeRemaining(JJ)V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    long-to-int v0, p0

    long-to-int v1, p2

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->nativeRecordCastEndedTimeRemaining(II)V

    .line 79
    :cond_0
    return-void
.end method

.method public static castMediaType(I)V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->nativeRecordCastMediaType(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public static castPlayRequested()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->nativeRecordCastPlayRequested()V

    .line 49
    :cond_0
    return-void
.end method

.method private static native nativeRecordCastDefaultPlayerResult(Z)V
.end method

.method private static native nativeRecordCastEndedTimeRemaining(II)V
.end method

.method private static native nativeRecordCastMediaType(I)V
.end method

.method private static native nativeRecordCastPlayRequested()V
.end method

.method private static native nativeRecordCastYouTubePlayerResult(Z)V
.end method

.method private static native nativeRecordRemotePlaybackDeviceSelected(I)V
.end method

.method public static recordFullscreenControlsAction(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 113
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    .line 116
    const-string/jumbo v0, "Cast.Sender.FullscreenControlsActionWithMediaElement"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 120
    :cond_1
    const-string/jumbo v0, "Cast.Sender.FullscreenControlsActionWithoutMediaElement"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static recordFullscreenControlsShown(Z)V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "Cast.Sender.MediaElementPresentWhenShowFullscreenControls"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public static recordRemoteSessionTimeWithoutMediaElementPercentage(I)V
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string/jumbo v0, "Cast.Sender.SessionTimeWithoutMediaElementPercentage"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordPercentageHistogram(Ljava/lang/String;I)V

    .line 150
    :cond_0
    return-void
.end method

.method public static remotePlaybackDeviceSelected(I)V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_1
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->nativeRecordRemotePlaybackDeviceSelected(I)V

    .line 40
    :cond_2
    return-void
.end method
