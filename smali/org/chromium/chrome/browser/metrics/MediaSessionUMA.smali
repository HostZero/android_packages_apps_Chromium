.class public Lorg/chromium/chrome/browser/metrics/MediaSessionUMA;
.super Ljava/lang/Object;
.source "MediaSessionUMA.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MEDIA_SESSION_ACTION_SOURCE_HEADSET_UNPLUG:I = 0x2

.field public static final MEDIA_SESSION_ACTION_SOURCE_MAX:I = 0x3

.field public static final MEDIA_SESSION_ACTION_SOURCE_MEDIA_NOTIFICATION:I = 0x0

.field public static final MEDIA_SESSION_ACTION_SOURCE_MEDIA_SESSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/chromium/chrome/browser/metrics/MediaSessionUMA;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/metrics/MediaSessionUMA;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordPause(I)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 26
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/MediaSessionUMA;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_1
    const-string/jumbo v0, "Media.Session.Pause"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 29
    return-void
.end method

.method public static recordPlay(I)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 20
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/MediaSessionUMA;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_1
    const-string/jumbo v0, "Media.Session.Play"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 23
    return-void
.end method

.method public static recordStop(I)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 32
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/MediaSessionUMA;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_1
    const-string/jumbo v0, "Media.Session.Stop"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 35
    return-void
.end method
