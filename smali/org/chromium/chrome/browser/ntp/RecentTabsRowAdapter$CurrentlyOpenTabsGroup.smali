.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;
.super Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;
.source "RecentTabsRowAdapter.java"


# instance fields
.field private final mCurrentlyOpenTabs:Ljava/util/List;

.field private final mShowingAll:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V

    .line 199
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->mCurrentlyOpenTabs:Ljava/util/List;

    .line 200
    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->isCurrentlyOpenTabsShowingAll()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->mShowingAll:Z

    .line 201
    return-void
.end method

.method private isMoreButton(I)Z
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->mShowingAll:Z

    if-nez v0, :cond_0

    const/4 v0, 0x6

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->mCurrentlyOpenTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

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
.method configureChildView(ILorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->isMoreButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$000(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 235
    sget v1, Lorg/chromium/chrome/R$string;->recent_tabs_show_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    iget-object v2, p2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    sget v1, Lorg/chromium/chrome/R$drawable;->more_horiz:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    iget-object v1, p2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-static {v1, v0, v3, v3, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;

    move-result-object v1

    .line 243
    iget-object v2, p2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->getUrl()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->loadLocalFavicon(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V
    invoke-static {v0, p2, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method configureGroupView(Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;Z)V
    .locals 0

    .prologue
    .line 251
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->configureForCurrentlyOpenTabs(Z)V

    .line 252
    return-void
.end method

.method bridge synthetic getChild(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;

    move-result-object v0

    return-object v0
.end method

.method getChild(I)Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->isMoreButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->mCurrentlyOpenTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;

    goto :goto_0
.end method

.method getChildType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->DEFAULT_CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    return-object v0
.end method

.method getChildrenCount()I
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->mShowingAll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->mCurrentlyOpenTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->mCurrentlyOpenTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getGroupType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    return-object v0
.end method

.method isCollapsed()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->isCurrentlyOpenTabsCollapsed()Z

    move-result v0

    return v0
.end method

.method onChildClick(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 266
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->isMoreButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->setCurrentlyOpenTabsShowAll(Z)V

    .line 271
    :goto_0
    return v1

    .line 269
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method onCreateContextMenuForChild(ILandroid/view/ContextMenu;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->isMoreButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup$1;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;I)V

    .line 285
    sget v1, Lorg/chromium/chrome/R$string;->close_tab:I

    invoke-interface {p2, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method setCollapsed(Z)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->setCurrentlyOpenTabsCollapsed(Z)V

    .line 257
    return-void
.end method
