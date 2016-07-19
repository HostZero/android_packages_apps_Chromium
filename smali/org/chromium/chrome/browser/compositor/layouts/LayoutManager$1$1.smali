.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1$1;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;

.field final synthetic val$observer:Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1$1;->this$1:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;

    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1$1;->val$observer:Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1$1;->this$1:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1$1;->val$observer:Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 552
    return-void
.end method
