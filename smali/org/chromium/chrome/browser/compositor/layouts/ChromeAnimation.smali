.class public Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
.super Ljava/lang/Object;
.source "ChromeAnimation.java"


# static fields
.field private static sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private static sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;

.field private mCurrentTime:J

.field private final mFinishCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mFinishCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    .line 384
    return-void
.end method

.method private finishInternal()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mFinishCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finish()V

    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mFinishCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public static getAccelerateInterpolator()Landroid/view/animation/AccelerateInterpolator;
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getDecelerateInterpolator()Landroid/view/animation/DecelerateInterpolator;
    .locals 2

    .prologue
    .line 76
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getLinearInterpolator()Landroid/view/animation/LinearInterpolator;
    .locals 2

    .prologue
    .line 64
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public add(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public cancel(Ljava/lang/Object;Ljava/lang/Enum;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    .line 118
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->getAnimatedObject()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    :cond_0
    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->checkProperty(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_2
    return-void
.end method

.method protected finish()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public finished()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mFinishCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 187
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 181
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 187
    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mFinishCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mCurrentTime:J

    move v1, v0

    .line 103
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    .line 105
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->start()V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public update(J)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 155
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mFinishCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return v0

    .line 158
    :cond_0
    iget-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mCurrentTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    const-wide/16 v4, 0x10

    sub-long v4, p1, v4

    iput-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mCurrentTime:J

    .line 159
    :cond_1
    iget-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mCurrentTime:J

    sub-long v4, p1, v4

    .line 160
    iget-wide v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mCurrentTime:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mCurrentTime:J

    move v1, v2

    move v3, v0

    .line 162
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    invoke-virtual {v0, v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->update(J)V

    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->finished()Z

    move-result v0

    and-int/2addr v3, v0

    .line 162
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 167
    :cond_2
    if-eqz v3, :cond_3

    .line 168
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->updateAndFinish()V

    :cond_3
    move v0, v2

    .line 170
    goto :goto_0
.end method

.method public updateAndFinish()V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->updateAndFinish()V

    .line 130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finishInternal()V

    .line 134
    return-void
.end method
