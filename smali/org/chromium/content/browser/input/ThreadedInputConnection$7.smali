.class Lorg/chromium/content/browser/input/ThreadedInputConnection$7;
.super Ljava/lang/Object;
.source "ThreadedInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field final synthetic val$event:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 152
    return-void
.end method
