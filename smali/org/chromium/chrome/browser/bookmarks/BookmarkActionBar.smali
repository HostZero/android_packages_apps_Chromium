.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;
.super Landroid/support/v7/widget/Toolbar;
.source "BookmarkActionBar.java"

# interfaces
.implements Landroid/support/v7/widget/m;
.implements Landroid/view/View$OnClickListener;
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActionBarDrawerToggle:Landroid/support/v7/app/c;

.field private mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

.field private mCurrentFolder:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

.field private mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

.field private mIsSelectionEnabled:Z

.field private mNavigationButton:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 55
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v0, Lorg/chromium/chrome/R$menu;->bookmark_action_bar_menu:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->inflateMenu(I)V

    .line 57
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setOnMenuItemClickListener$486aeec7(Landroid/support/v7/widget/m;)V

    .line 59
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->search_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->bookmark_action_bar_search:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 62
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->selection_mode_edit_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->edit_bookmark:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 65
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->selection_mode_move_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->bookmark_action_bar_move:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 68
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->selection_mode_delete_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->bookmark_action_bar_delete:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    return-object v0
.end method

.method private getTitleForAllItems()I
    .locals 1

    .prologue
    .line 299
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_title_bar_all_items:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v0

    return v0
.end method

.method private initActionBarDrawerToggle()V
    .locals 6

    .prologue
    .line 187
    new-instance v0, Landroid/support/v7/app/c;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object v2

    sget v4, Lorg/chromium/chrome/R$string;->accessibility_bookmark_drawer_toggle_btn_open:I

    sget v5, Lorg/chromium/chrome/R$string;->accessibility_bookmark_drawer_toggle_btn_close:I

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/c;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mActionBarDrawerToggle:Landroid/support/v7/app/c;

    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mActionBarDrawerToggle:Landroid/support/v7/app/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/r;)V

    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mActionBarDrawerToggle:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/support/v7/app/c;->c()V

    .line 193
    return-void
.end method

.method private setNavigationButton(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 136
    .line 139
    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->doesDrawerExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mNavigationButton:I

    .line 145
    :goto_0
    iget v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mNavigationButton:I

    if-ne v1, v2, :cond_1

    .line 146
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->initActionBarDrawerToggle()V

    .line 179
    :goto_1
    return-void

    .line 142
    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mNavigationButton:I

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mActionBarDrawerToggle:Landroid/support/v7/app/c;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mActionBarDrawerToggle:Landroid/support/v7/app/c;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/c;->a(Z)V

    .line 153
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/r;)V

    .line 156
    :cond_2
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mNavigationButton:I

    packed-switch v1, :pswitch_data_0

    .line 170
    :pswitch_0
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Incorrect navigationButton argument"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    move v1, v0

    .line 173
    :goto_2
    if-nez v1, :cond_3

    .line 174
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :goto_3
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationContentDescription(I)V

    goto :goto_1

    .line 162
    :pswitch_2
    sget v1, Lorg/chromium/chrome/R$drawable;->bookmark_back_normal:I

    .line 163
    sget v0, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_back:I

    goto :goto_2

    .line 166
    :pswitch_3
    sget v1, Lorg/chromium/chrome/R$drawable;->bookmark_cancel_active:I

    .line 167
    sget v0, Lorg/chromium/chrome/R$string;->accessibility_bookmark_cancel_selection:I

    goto :goto_2

    .line 176
    :cond_3
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationIcon(I)V

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_2

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onAllBookmarksStateSet()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 220
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getTitleForAllItems()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setTitle(I)V

    .line 221
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationButton(I)V

    .line 222
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->search_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 223
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->edit_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    return-void
.end method

.method public onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 2

    .prologue
    .line 206
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->addUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 208
    invoke-interface {p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->isDialogUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->close_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 209
    :cond_0
    invoke-interface {p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 210
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mNavigationButton:I

    packed-switch v0, :pswitch_data_0

    .line 88
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Incorrect navigation button state"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->openFolder(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 90
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 85
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->clearSelection()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->removeUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 215
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 216
    return-void
.end method

.method public onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 2

    .prologue
    .line 250
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 251
    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_title_bar_filter_offline_pages:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setTitle(I)V

    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationButton(I)V

    .line 253
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->edit_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 254
    return-void
.end method

.method public onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    .line 230
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->search_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->edit_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isEditable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getTopLevelFolderParentIDs()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getTitleForAllItems()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setTitle(I)V

    .line 241
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationButton(I)V

    .line 246
    :goto_1
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationButton(I)V

    goto :goto_1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lorg/chromium/chrome/R$id;->edit_menu_id:I

    if-ne v2, v3, :cond_1

    .line 95
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->startEditFolderActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V

    move v0, v1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lorg/chromium/chrome/R$id;->close_menu_id:I

    if-ne v2, v3, :cond_2

    .line 99
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->finishActivityOnPhone(Landroid/content/Context;)V

    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lorg/chromium/chrome/R$id;->search_menu_id:I

    if-ne v2, v3, :cond_3

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->openSearchUI()V

    move v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lorg/chromium/chrome/R$id;->selection_mode_edit_menu_id:I

    if-ne v2, v3, :cond_6

    .line 105
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getSelectedBookmarks()Ljava/util/List;

    move-result-object v2

    .line 106
    sget-boolean v3, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_4
    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->startEditFolderActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V

    :goto_1
    move v0, v1

    .line 113
    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->startEditActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_1

    .line 114
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lorg/chromium/chrome/R$id;->selection_mode_move_menu_id:I

    if-ne v2, v3, :cond_8

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getSelectedBookmarks()Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 117
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->startFolderSelectActivity(Landroid/content/Context;[Lorg/chromium/components/bookmarks/BookmarkId;)V

    :cond_7
    move v0, v1

    .line 120
    goto/16 :goto_0

    .line 121
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lorg/chromium/chrome/R$id;->selection_mode_delete_menu_id:I

    if-ne v2, v3, :cond_9

    .line 122
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getSelectedBookmarks()Ljava/util/List;

    move-result-object v3

    new-array v0, v0, [Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->deleteBookmarks([Lorg/chromium/components/bookmarks/BookmarkId;)V

    move v0, v1

    .line 124
    goto/16 :goto_0

    .line 127
    :cond_9
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unhandled menu click."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public onSelectionStateChange(Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 258
    iget-boolean v4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mIsSelectionEnabled:Z

    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->isSelectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mIsSelectionEnabled:Z

    .line 260
    sget v0, Lorg/chromium/chrome/R$id;->selection_mode_number:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/NumberRollView;

    .line 261
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mIsSelectionEnabled:Z

    if-eqz v1, :cond_4

    .line 262
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationButton(I)V

    .line 263
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v5, Lorg/chromium/chrome/R$id;->normal_menu_group:I

    invoke-interface {v1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 266
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v5, Lorg/chromium/chrome/R$id;->selection_mode_menu_group:I

    invoke-interface {v1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 268
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v5, Lorg/chromium/chrome/R$id;->selection_mode_edit_menu_id:I

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/bookmarks/BookmarkId;

    .line 273
    invoke-virtual {v1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 274
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v5, Lorg/chromium/chrome/R$id;->selection_mode_move_menu_id:I

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lorg/chromium/chrome/R$color;->light_active_color:I

    invoke-static {v1, v5}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setBackgroundColor(I)V

    .line 282
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/widget/NumberRollView;->setVisibility(I)V

    .line 283
    if-nez v4, :cond_2

    invoke-virtual {v0, v3, v3}, Lorg/chromium/chrome/browser/widget/NumberRollView;->setNumber(IZ)V

    .line 284
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/widget/NumberRollView;->setNumber(IZ)V

    .line 296
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 268
    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v4, Lorg/chromium/chrome/R$id;->normal_menu_group:I

    invoke-interface {v1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 287
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$id;->selection_mode_menu_group:I

    invoke-interface {v1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 288
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->bookmark_appbar_background:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setBackgroundColor(I)V

    .line 291
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/NumberRollView;->setVisibility(I)V

    .line 292
    invoke-virtual {v0, v3, v3}, Lorg/chromium/chrome/browser/widget/NumberRollView;->setNumber(IZ)V

    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->notifyStateChange(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    goto :goto_1
.end method

.method showLoadingUi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->setNavigationButton(I)V

    .line 198
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->search_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 199
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->edit_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    return-void
.end method
