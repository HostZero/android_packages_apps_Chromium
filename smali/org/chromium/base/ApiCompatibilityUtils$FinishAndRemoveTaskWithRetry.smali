.class Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;
.super Ljava/lang/Object;
.source "ApiCompatibilityUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mTryCount:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mActivity:Landroid/app/Activity;

    .line 291
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 295
    iget-object v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 296
    iget v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mTryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mTryCount:I

    .line 297
    iget-object v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mTryCount:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 299
    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
