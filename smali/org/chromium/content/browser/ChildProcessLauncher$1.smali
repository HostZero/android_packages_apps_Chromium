.class final Lorg/chromium/content/browser/ChildProcessLauncher$1;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"

# interfaces
.implements Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildProcessDied(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 1

    .prologue
    .line 341
    invoke-interface {p1}, Lorg/chromium/content/browser/ChildProcessConnection;->getPid()I

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-interface {p1}, Lorg/chromium/content/browser/ChildProcessConnection;->getPid()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->stop(I)V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$100(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method
