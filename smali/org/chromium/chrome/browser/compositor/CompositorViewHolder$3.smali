.class Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$3;
.super Ljava/lang/Object;
.source "CompositorViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

.field final synthetic val$controlContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$3;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$3;->val$controlContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$3;->val$controlContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 548
    return-void
.end method
