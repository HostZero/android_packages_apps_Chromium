.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;
.super Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;
.source "RecentTabsRowAdapter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V

    return-void
.end method

.method private isHistoryLink(I)Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->getRecentlyClosedTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public configureChildView(ILorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 433
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->isHistoryLink(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->show_full_history:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 435
    iget-object v0, p2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$drawable;->history_favicon:I

    invoke-static {v0, v1, v2, v2, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V

    .line 443
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    move-result-object v0

    .line 439
    iget-object v1, v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;->title:Ljava/lang/String;

    iget-object v2, v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getTitleForDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    iget-object v2, p2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;->url:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->loadLocalFavicon(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V
    invoke-static {v1, p2, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public configureGroupView(Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;Z)V
    .locals 0

    .prologue
    .line 447
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->configureForRecentlyClosedTabs(Z)V

    .line 448
    return-void
.end method

.method public bridge synthetic getChild(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->isHistoryLink(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->getRecentlyClosedTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    goto :goto_0
.end method

.method public getChildType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->DEFAULT_CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->getRecentlyClosedTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getGroupType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    return-object v0
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->isRecentlyClosedTabsCollapsed()Z

    move-result v0

    return v0
.end method

.method public onChildClick(I)Z
    .locals 3

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->isHistoryLink(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openHistoryPage()V

    .line 468
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openRecentlyClosedTab(Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)V

    goto :goto_0
.end method

.method public onCreateContextMenuForChild(ILandroid/view/ContextMenu;Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    move-result-object v0

    .line 479
    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 480
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup$1;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;)V

    .line 497
    const/4 v0, 0x1

    sget v2, Lorg/chromium/chrome/R$string;->contextmenu_open_in_new_tab:I

    invoke-interface {p2, v3, v0, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 499
    const/4 v0, 0x2

    sget v2, Lorg/chromium/chrome/R$string;->remove_all:I

    invoke-interface {p2, v3, v0, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateContextMenuForGroup(Landroid/view/ContextMenu;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->setRecentlyClosedTabsCollapsed(Z)V

    .line 453
    return-void
.end method
