.class Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;
.super Ljava/lang/Object;
.source "ThreadedInputConnectionFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->onWindowFocusChanged(Z)V

    .line 116
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$100(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    .line 119
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$400(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method
