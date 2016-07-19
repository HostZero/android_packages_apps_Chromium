.class Lorg/chromium/content/browser/input/ThreadedInputConnection$4;
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
    .line 62
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->requestTextInputStateUpdate()Z

    move-result v0

    .line 66
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->unblockOnUiThread()V

    .line 67
    :cond_0
    return-void
.end method
