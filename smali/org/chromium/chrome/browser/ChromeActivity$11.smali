.class Lorg/chromium/chrome/browser/ChromeActivity$11;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 1496
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$11;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1499
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$11;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mDeferredStartupNotified:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$700(Lorg/chromium/chrome/browser/ChromeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$11;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1500
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$11;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/ChromeActivity;->mDeferredStartupNotified:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->access$702(Lorg/chromium/chrome/browser/ChromeActivity;Z)Z

    .line 1501
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/ChromeActivity$11$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ChromeActivity$11$1;-><init>(Lorg/chromium/chrome/browser/ChromeActivity$11;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1509
    :cond_0
    return-void
.end method
