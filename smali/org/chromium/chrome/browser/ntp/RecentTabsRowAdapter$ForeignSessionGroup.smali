.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;
.super Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;
.source "RecentTabsRowAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const-class v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V

    .line 296
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    .line 297
    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    return-object v0
.end method


# virtual methods
.method public configureChildView(ILorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;)V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    move-result-object v1

    .line 333
    iget-object v2, p2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, v1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;->url:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    iget-object v1, v1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;->url:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->loadSyncedFavicon(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V
    invoke-static {v0, p2, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$400(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V

    .line 336
    return-void

    .line 333
    :cond_0
    iget-object v0, v1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public configureGroupView(Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;Z)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    invoke-virtual {p1, v0, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->configureForForeignSession(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Z)V

    .line 341
    return-void
.end method

.method public bridge synthetic getChild(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;

    .line 321
    iget-object v2, v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 322
    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    .line 327
    :goto_1
    return-object v0

    .line 324
    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 325
    goto :goto_0

    .line 326
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 327
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->DEFAULT_CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 3

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    iget-object v1, v1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->windows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;

    .line 308
    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 309
    goto :goto_0

    .line 310
    :cond_0
    return v1
.end method

.method public getGroupType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    return-object v0
.end method

.method public isCollapsed()Z
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->getForeignSessionCollapsed(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)Z

    move-result v0

    return v0
.end method

.method public onChildClick(I)Z
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openForeignSessionTab(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)V

    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateContextMenuForChild(ILandroid/view/ContextMenu;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    move-result-object v0

    .line 378
    new-instance v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$2;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$2;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;)V

    .line 386
    sget v0, Lorg/chromium/chrome/R$string;->contextmenu_open_in_new_tab:I

    invoke-interface {p2, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 387
    return-void
.end method

.method public onCreateContextMenuForGroup(Landroid/view/ContextMenu;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$1;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;)V

    .line 370
    sget v1, Lorg/chromium/chrome/R$string;->ntp_recent_tabs_remove_menu_option:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 372
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->setForeignSessionCollapsed(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Z)V

    .line 346
    return-void
.end method
