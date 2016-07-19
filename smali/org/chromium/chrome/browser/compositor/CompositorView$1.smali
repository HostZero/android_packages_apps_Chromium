.class Lorg/chromium/chrome/browser/compositor/CompositorView$1;
.super Ljava/lang/Object;
.source "CompositorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/CompositorView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorView;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView$1;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView$1;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->setBackgroundResource(I)V

    .line 301
    return-void
.end method
