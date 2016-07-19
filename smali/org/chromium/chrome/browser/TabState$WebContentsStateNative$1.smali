.class Lorg/chromium/chrome/browser/TabState$WebContentsStateNative$1;
.super Ljava/lang/Object;
.source "TabState.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative$1;->this$0:Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative$1;->this$0:Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/TabState;->nativeFreeWebContentsStateBuffer(Ljava/nio/ByteBuffer;)V
    invoke-static {v0}, Lorg/chromium/chrome/browser/TabState;->access$200(Ljava/nio/ByteBuffer;)V

    .line 115
    return-void
.end method
