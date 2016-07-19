.class Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;
.super Ljava/lang/Object;
.source "SwipeRefreshHandler.java"

# interfaces
.implements Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReset()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # getter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mDetachLayoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$400(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    new-instance v1, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2$1;-><init>(Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;)V

    # setter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mDetachLayoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$402(Lorg/chromium/chrome/browser/SwipeRefreshHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # getter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$200(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # getter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mDetachLayoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$400(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
