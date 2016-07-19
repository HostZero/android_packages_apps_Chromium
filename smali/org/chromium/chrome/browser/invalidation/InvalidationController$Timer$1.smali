.class Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer$1;
.super Ljava/lang/Object;
.source "InvalidationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer$1;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer$1;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    # getter for: Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->access$000(Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;)Ljava/lang/Runnable;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer$1;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    # setter for: Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->access$002(Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 94
    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer$1;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    # setter for: Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandlerRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->access$102(Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 95
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    return-void
.end method
