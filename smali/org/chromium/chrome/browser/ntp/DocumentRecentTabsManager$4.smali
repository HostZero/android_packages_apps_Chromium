.class Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;
.super Ljava/lang/Object;
.source "DocumentRecentTabsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

.field final synthetic val$tab:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;->val$tab:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;->val$tab:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    const/4 v2, 0x4

    # invokes: Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openRecentlyClosedTab(Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$401(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)V

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$300(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$300(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
