.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$4;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "ToolbarManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabCount()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 245
    return-void
.end method

.method public onTabStateInitialized()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabRestoreCompleted:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$502(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)Z

    .line 250
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->handleTabRestoreCompleted()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$600(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 251
    return-void
.end method
