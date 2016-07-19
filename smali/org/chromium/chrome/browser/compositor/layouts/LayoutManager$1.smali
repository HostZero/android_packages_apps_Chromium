.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "LayoutManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabStateInitialized()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabStateInitialized()V

    .line 548
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1$1;

    invoke-direct {v1, p0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    return-void
.end method
