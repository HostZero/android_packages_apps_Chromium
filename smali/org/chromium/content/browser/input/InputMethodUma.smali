.class Lorg/chromium/content/browser/input/InputMethodUma;
.super Ljava/lang/Object;
.source "InputMethodUma.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method recordProxyViewDetectionFailure()V
    .locals 3

    .prologue
    .line 33
    const-string/jumbo v0, "InputMethod.RegisterProxyView"

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 35
    return-void
.end method

.method recordProxyViewFailure()V
    .locals 3

    .prologue
    .line 28
    const-string/jumbo v0, "InputMethod.RegisterProxyView"

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 30
    return-void
.end method

.method recordProxyViewReplicaInputConnection()V
    .locals 3

    .prologue
    .line 38
    const-string/jumbo v0, "InputMethod.RegisterProxyView"

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 40
    return-void
.end method

.method recordProxyViewSuccess()V
    .locals 3

    .prologue
    .line 23
    const-string/jumbo v0, "InputMethod.RegisterProxyView"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 25
    return-void
.end method
