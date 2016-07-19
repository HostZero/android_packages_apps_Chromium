.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;
.super Ljava/lang/Object;
.source "RecentTabsRowAdapter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;

.field final synthetic val$recentlyClosedTab:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 480
    const-class v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;->val$recentlyClosedTab:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 483
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 492
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 485
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->clearRecentlyClosedTabs()V

    .line 494
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 488
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;->val$recentlyClosedTab:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openRecentlyClosedTab(Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)V

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
