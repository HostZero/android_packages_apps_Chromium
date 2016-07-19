.class Lorg/chromium/content/browser/input/ThreadedInputConnection$11;
.super Ljava/lang/Object;
.source "ThreadedInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;->val$id:I

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->performContextMenuAction(I)Z

    .line 332
    return-void
.end method
