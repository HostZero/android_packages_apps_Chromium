.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$10;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$10;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneChange(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$10;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->shouldDisplayContentOverlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setContentAttached(Z)V

    .line 535
    return-void
.end method

.method public onTabSelectionHinted(I)V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$10;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mPreselectedTabId:I
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$702(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)I

    .line 525
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$10;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 527
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$10;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setForceTextureCapture(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$10;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->invalidateBitmap()V

    .line 530
    :cond_0
    return-void
.end method
