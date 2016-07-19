.class Lorg/chromium/chrome/browser/invalidation/InvalidationController$1;
.super Landroid/os/AsyncTask;
.source "InvalidationController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/invalidation/InvalidationController;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$1;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$1;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    # getter for: Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->access$300(Lorg/chromium/chrome/browser/invalidation/InvalidationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/channel/c;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$1;->this$0:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    # getter for: Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mUseGcmUpstream:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->access$200(Lorg/chromium/chrome/browser/invalidation/InvalidationController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a(Z)V

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method
