.class Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$7;
.super Ljava/lang/Object;
.source "ThreadedInputConnectionProxyView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$7;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$7;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$7;->call()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
