.class Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$1;
.super Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;
.source "DocumentRecentTabsManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$1;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;)V

    return-void
.end method


# virtual methods
.method public isCanceled()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$1;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$000(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$1;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$000(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSatisfied(I)Z
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected runImmediately()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$1;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # invokes: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->updateCurrentlyOpenTabsWhenDatabaseReady()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$100(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)V

    .line 79
    return-void
.end method
