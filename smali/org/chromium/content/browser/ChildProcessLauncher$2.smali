.class final Lorg/chromium/content/browser/ChildProcessLauncher$2;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$conn:Lorg/chromium/content/browser/ChildProcessConnection;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2;->val$conn:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2;->val$conn:Lorg/chromium/content/browser/ChildProcessConnection;

    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnectionAndDequeuePending(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$200(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;

    invoke-direct {v2, p0, v0}, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;-><init>(Lorg/chromium/content/browser/ChildProcessLauncher$2;Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 429
    :cond_0
    return-void
.end method
