.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "ToolbarManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public allTabsPendingClosure(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabCount()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 288
    return-void
.end method

.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabCount()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 258
    return-void
.end method

.method public didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabCount()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 275
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 276
    return-void
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    const/4 v1, -0x1

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mPreselectedTabId:I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$702(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)I

    .line 263
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 264
    return-void
.end method

.method public tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabCount()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 270
    return-void
.end method

.method public tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabCount()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 282
    return-void
.end method
