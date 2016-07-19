.class Lorg/chromium/content/browser/input/ThreadedInputConnection$8;
.super Ljava/lang/Object;
.source "ThreadedInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field final synthetic val$newCursorPosition:I

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$newCursorPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    # getter for: Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$newCursorPosition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->sendCompositionToNative(Ljava/lang/CharSequence;IZ)Z

    .line 281
    return-void
.end method
