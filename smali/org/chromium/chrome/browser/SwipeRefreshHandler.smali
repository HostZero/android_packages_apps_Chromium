.class public Lorg/chromium/chrome/browser/SwipeRefreshHandler;
.super Ljava/lang/Object;
.source "SwipeRefreshHandler.java"

# interfaces
.implements Lorg/chromium/content/browser/OverscrollRefreshHandler;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mAccessibilityRefreshString:Ljava/lang/String;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mDetachLayoutRunnable:Ljava/lang/Runnable;

.field private mStopRefreshingRunnable:Ljava/lang/Runnable;

.field private final mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    new-array v1, v4, [I

    sget v2, Lorg/chromium/chrome/R$color;->light_active_color:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setSize(I)V

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->cancelStopRefreshingRunnable()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->getStopRefreshingRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mAccessibilityRefreshString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/SwipeRefreshHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mAccessibilityRefreshString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mDetachLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/SwipeRefreshHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mDetachLayoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->detachSwipeRefreshLayoutIfNecessary()V

    return-void
.end method

.method private attachSwipeRefreshLayoutIfNecessary()V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->cancelDetachLayoutRunnable()V

    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private cancelDetachLayoutRunnable()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mDetachLayoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mDetachLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mDetachLayoutRunnable:Ljava/lang/Runnable;

    .line 177
    :cond_0
    return-void
.end method

.method private cancelStopRefreshingRunnable()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 170
    :cond_0
    return-void
.end method

.method private detachSwipeRefreshLayoutIfNecessary()V
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->cancelDetachLayoutRunnable()V

    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getStopRefreshingRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler$3;-><init>(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mStopRefreshingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public didStopRefreshing()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->cancelStopRefreshingRunnable()V

    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->getStopRefreshingRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public pull(F)V
    .locals 1

    .prologue
    .line 142
    const-string/jumbo v0, "SwipeRefreshHandler.pull"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->pull(F)V

    .line 144
    const-string/jumbo v0, "SwipeRefreshHandler.pull"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public release(Z)V
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "SwipeRefreshHandler.release"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->release(Z)V

    .line 151
    const-string/jumbo v0, "SwipeRefreshHandler.release"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->cancelStopRefreshingRunnable()V

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->reset()V

    .line 158
    return-void
.end method

.method public setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-ne v0, p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_2

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->setEnabled(Z)V

    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->cancelStopRefreshingRunnable()V

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setOverscrollRefreshHandler(Lorg/chromium/content/browser/OverscrollRefreshHandler;)V

    .line 82
    :cond_2
    iput-object p1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    new-instance v1, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;-><init>(Lorg/chromium/chrome/browser/SwipeRefreshHandler;Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    new-instance v1, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;-><init>(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)V

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setOnResetListener(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;)V

    .line 119
    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/ContentViewCore;->setOverscrollRefreshHandler(Lorg/chromium/content/browser/OverscrollRefreshHandler;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 163
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->reset()V

    .line 164
    :cond_0
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->attachSwipeRefreshLayoutIfNecessary()V

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->start()Z

    move-result v0

    return v0
.end method
