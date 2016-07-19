.class Lorg/chromium/chrome/browser/SwipeRefreshHandler$3;
.super Ljava/lang/Object;
.source "SwipeRefreshHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$3;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$3;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # getter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$200(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 185
    return-void
.end method
