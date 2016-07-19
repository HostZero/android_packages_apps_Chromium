.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;
.super Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;
.source "RecentTabsRowAdapter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V

    return-void
.end method


# virtual methods
.method public configureChildView(ILorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public configureGroupView(Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;Z)V
    .locals 0

    .prologue
    .line 623
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->configureForSyncPromo(Z)V

    .line 624
    return-void
.end method

.method public getChild(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;
    .locals 1

    .prologue
    .line 579
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->SYNC_PROMO:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    return-object v0
.end method

.method getChildView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 595
    if-nez p3, :cond_0

    .line 596
    new-instance p3, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$000(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup$1;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;)V

    invoke-direct {p3, v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    const-string/jumbo v0, "Signin_Impression_FromRecentTabs"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 614
    :cond_1
    return-object p3
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public getGroupType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    return-object v0
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->isSyncPromoCollapsed()Z

    move-result v0

    return v0
.end method

.method public onChildClick(I)Z
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public setCollapsed(Z)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->setSyncPromoCollapsed(Z)V

    .line 629
    return-void
.end method
