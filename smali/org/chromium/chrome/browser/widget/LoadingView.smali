.class public Lorg/chromium/chrome/browser/widget/LoadingView;
.super Landroid/widget/ProgressBar;
.source "LoadingView.java"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mStartTime:J

    .line 26
    new-instance v0, Lorg/chromium/chrome/browser/widget/LoadingView$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/LoadingView$1;-><init>(Lorg/chromium/chrome/browser/widget/LoadingView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedShow:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/widget/LoadingView$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/LoadingView$2;-><init>(Lorg/chromium/chrome/browser/widget/LoadingView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedHide:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mStartTime:J

    .line 26
    new-instance v0, Lorg/chromium/chrome/browser/widget/LoadingView$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/LoadingView$1;-><init>(Lorg/chromium/chrome/browser/widget/LoadingView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedShow:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/widget/LoadingView$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/LoadingView$2;-><init>(Lorg/chromium/chrome/browser/widget/LoadingView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedHide:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/widget/LoadingView;J)J
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mStartTime:J

    return-wide p1
.end method


# virtual methods
.method public hideLoadingUI()V
    .locals 8

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 83
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/LoadingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mStartTime:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/widget/LoadingView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :cond_0
    return-void
.end method

.method public showLoadingUI()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/widget/LoadingView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
