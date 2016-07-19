.class Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$4;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "CompositorViewHolder.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$4;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$4;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->onContentChanged()V

    .line 747
    return-void
.end method

.method public onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$4;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    # invokes: Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->initializeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->access$400(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 752
    return-void
.end method
