.class Lorg/chromium/chrome/browser/SwipeRefreshHandler$2$1;
.super Ljava/lang/Object;
.source "SwipeRefreshHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2$1;->this$1:Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2$1;->this$1:Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->mDetachLayoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$402(Lorg/chromium/chrome/browser/SwipeRefreshHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2$1;->this$1:Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/SwipeRefreshHandler$2;->this$0:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    # invokes: Lorg/chromium/chrome/browser/SwipeRefreshHandler;->detachSwipeRefreshLayoutIfNecessary()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->access$500(Lorg/chromium/chrome/browser/SwipeRefreshHandler;)V

    .line 113
    return-void
.end method
