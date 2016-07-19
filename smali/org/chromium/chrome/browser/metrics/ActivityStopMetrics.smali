.class public Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;
.super Ljava/lang/Object;
.source "ActivityStopMetrics.java"


# static fields
.field public static final STOP_REASON_BACK_BUTTON:I = 0x1

.field public static final STOP_REASON_COUNT:I = 0x6

.field public static final STOP_REASON_CUSTOM_TAB_STARTED:I = 0x3

.field public static final STOP_REASON_CUSTOM_TAB_STOPPED:I = 0x4

.field public static final STOP_REASON_OTHER_CHROME_ACTIVITY_IN_FOREGROUND:I = 0x5

.field public static final STOP_REASON_RETURN_BUTTON:I = 0x2

.field public static final STOP_REASON_UNKNOWN:I


# instance fields
.field private mStopReason:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x6

    iput v0, p0, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->mStopReason:I

    .line 64
    return-void
.end method


# virtual methods
.method public onStopWithNative(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 71
    iget v0, p0, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->mStopReason:I

    if-ne v0, v2, :cond_0

    .line 72
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->mStopReason:I

    .line 79
    :cond_0
    :goto_0
    const-string/jumbo v0, "Android.Activity.ChromeTabbedActivity.StopReason"

    iget v1, p0, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->mStopReason:I

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 80
    iput v2, p0, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->mStopReason:I

    .line 81
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->mStopReason:I

    goto :goto_0
.end method

.method public setStopReason(I)V
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->mStopReason:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->mStopReason:I

    goto :goto_0
.end method
