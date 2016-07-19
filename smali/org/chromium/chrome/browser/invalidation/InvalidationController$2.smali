.class Lorg/chromium/chrome/browser/invalidation/InvalidationController$2;
.super Ljava/lang/Object;
.source "InvalidationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/invalidation/InvalidationController;Z)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$2;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$2;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$2;->val$enabled:Z

    # setter for: Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mSessionInvalidationsEnabled:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->access$402(Lorg/chromium/chrome/browser/invalidation/InvalidationController;Z)Z

    .line 313
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$2;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->ensureStartedAndUpdateRegisteredTypes()V

    .line 314
    return-void
.end method
