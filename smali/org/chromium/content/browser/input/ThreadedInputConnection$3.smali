.class Lorg/chromium/content/browser/input/ThreadedInputConnection$3;
.super Ljava/lang/Object;
.source "ThreadedInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    # invokes: Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$100(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v2

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->setSelection(II)Z

    goto :goto_0
.end method
