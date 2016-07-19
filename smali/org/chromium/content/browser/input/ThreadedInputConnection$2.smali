.class Lorg/chromium/content/browser/input/ThreadedInputConnection$2;
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
    .line 45
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    # invokes: Lorg/chromium/content/browser/input/ThreadedInputConnection;->processPendingInputStates()V
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$000(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    .line 49
    return-void
.end method
