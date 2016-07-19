.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;
.super Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;
.source "RecentTabsRowAdapter.java"


# instance fields
.field private final mIsVisible:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Z)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V

    .line 511
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;->mIsVisible:Z

    .line 512
    return-void
.end method


# virtual methods
.method public configureChildView(ILorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public configureGroupView(Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;Z)V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public getChild(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->NONE:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;->mIsVisible:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->VISIBLE_SEPARATOR:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->INVISIBLE_SEPARATOR:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    goto :goto_0
.end method

.method public getGroupView(ZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 531
    if-nez p2, :cond_0

    .line 532
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;->mIsVisible:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/chromium/chrome/R$layout;->recent_tabs_group_separator_visible:I

    .line 535
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$000(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 537
    :cond_0
    return-object p2

    .line 532
    :cond_1
    sget v0, Lorg/chromium/chrome/R$layout;->recent_tabs_group_separator_invisible:I

    goto :goto_0
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public onChildClick(I)Z
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public setCollapsed(Z)V
    .locals 0

    .prologue
    .line 555
    return-void
.end method
