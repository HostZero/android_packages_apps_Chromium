.class Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;
.super Ljava/lang/Object;
.source "SwipeRefreshHandler.java"

# interfaces
.implements Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

.field final synthetic val$contentViewCore:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/SwipeRefreshHandler;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    iput-object p2, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->val$contentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # invokes: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->cancelStopRefreshingRunnable()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$000(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)V

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # getter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$200(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # invokes: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->getStopRefreshingRunnable()Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$100(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1d4c

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # getter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mAccessibilityRefreshString:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$300(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    sget v0, Lorg/chromium/chrome/R$string;->accessibility_swipe_refresh:I

    .line 95
    iget-object v1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    iget-object v2, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->val$contentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # setter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mAccessibilityRefreshString:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$302(Lorg/chromium/chrome/browser/SwipeRefreshHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # getter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$200(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # getter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mAccessibilityRefreshString:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$300(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$1;->val$contentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->reloadToRefreshContent(Z)V

    .line 101
    const-string/jumbo v0, "MobilePullGestureReload"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 102
    return-void
.end method
