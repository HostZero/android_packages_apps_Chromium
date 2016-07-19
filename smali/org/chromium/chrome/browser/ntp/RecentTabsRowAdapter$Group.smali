.class abstract Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;
.super Ljava/lang/Object;
.source "RecentTabsRowAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract configureChildView(ILorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;)V
.end method

.method abstract configureGroupView(Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;Z)V
.end method

.method abstract getChild(I)Ljava/lang/Object;
.end method

.method abstract getChildType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;
.end method

.method getChildView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 101
    .line 102
    if-nez p3, :cond_0

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$000(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    sget v1, Lorg/chromium/chrome/R$layout;->recent_tabs_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 106
    new-instance v2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;)V

    move-object v0, v1

    .line 107
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;

    .line 112
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->configureChildView(ILorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;)V

    .line 114
    return-object v1

    :cond_0
    move-object v1, p3

    goto :goto_0
.end method

.method abstract getChildrenCount()I
.end method

.method abstract getGroupType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;
.end method

.method public getGroupView(ZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 136
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    instance-of v0, p2, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :cond_0
    check-cast p2, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;

    .line 138
    if-nez p2, :cond_1

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$000(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->recent_tabs_group_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;

    .line 142
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->configureGroupView(Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;Z)V

    .line 143
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method abstract isCollapsed()Z
.end method

.method abstract onChildClick(I)Z
.end method

.method onCreateContextMenuForChild(ILandroid/view/ContextMenu;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method onCreateContextMenuForGroup(Landroid/view/ContextMenu;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method abstract setCollapsed(Z)V
.end method
