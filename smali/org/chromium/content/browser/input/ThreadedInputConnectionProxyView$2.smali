.class Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$2;
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
    .line 65
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
