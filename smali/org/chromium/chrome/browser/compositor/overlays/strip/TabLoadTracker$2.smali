.class Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$2;
.super Ljava/lang/Object;
.source "TabLoadTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$2;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$2;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoading:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->access$302(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;Z)Z

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$2;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    # getter for: Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mCallback:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->access$200(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;)Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$2;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    # getter for: Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mId:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->access$100(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;->loadStateChanged(I)V

    .line 107
    return-void
.end method
