.class Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$2;
.super Ljava/lang/Object;
.source "CompositorViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$2;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$2;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    # invokes: Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->propagateViewportToLayouts(II)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->access$200(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;II)V

    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$2;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    # getter for: Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->access$300(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$2;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    # getter for: Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->access$300(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$2;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->access$302(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 223
    :cond_0
    return-void
.end method
