.class Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;
.super Ljava/lang/Object;
.source "ThreadedInputConnectionFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$100(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v1, v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$100(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v1, v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
    invoke-static {v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodUma:Lorg/chromium/content/browser/input/InputMethodUma;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodUma;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InputMethodUma;->recordProxyViewSuccess()V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$300(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/ThreadedInputConnection;

    move-result-object v0

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodUma:Lorg/chromium/content/browser/input/InputMethodUma;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodUma;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InputMethodUma;->recordProxyViewFailure()V

    .line 136
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->onRegisterProxyViewFailed()V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodUma:Lorg/chromium/content/browser/input/InputMethodUma;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodUma;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InputMethodUma;->recordProxyViewDetectionFailure()V

    goto :goto_0
.end method
