.class public Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;
.super Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
.source "CustomTabAppMenuPropertiesDelegate.java"


# instance fields
.field private final mDefaultBrowserFetcher:Landroid/os/AsyncTask;

.field private mIsCustomEntryAdded:Z

.field private final mItemToIndexMap:Ljava/util/Map;

.field private final mMenuEntries:Ljava/util/List;

.field private final mShowBookmark:Z

.field private final mShowShare:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Ljava/util/List;ZZZ)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mItemToIndexMap:Ljava/util/Map;

    .line 48
    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mMenuEntries:Ljava/util/List;

    .line 49
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mShowShare:Z

    .line 50
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mShowBookmark:Z

    .line 51
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;

    invoke-direct {v0, p0, p5, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;ZLorg/chromium/chrome/browser/ChromeActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mDefaultBrowserFetcher:Landroid/os/AsyncTask;

    .line 73
    return-void
.end method


# virtual methods
.method public getFooterResourceId()I
    .locals 1

    .prologue
    .line 132
    sget v0, Lorg/chromium/chrome/R$layout;->powered_by_chrome_footer:I

    return v0
.end method

.method public getIndexOfMenuItem(Landroid/view/MenuItem;)I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mItemToIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mItemToIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getMenuItemForTitle(Ljava/lang/String;)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mItemToIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 142
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareMenu(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    sget v1, Lorg/chromium/chrome/R$id;->forward_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->canGoForward()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 82
    sget v1, Lorg/chromium/chrome/R$id;->reload_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mReloadMenuItem:Landroid/view/MenuItem;

    .line 83
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mReloadMenuItem:Landroid/view/MenuItem;

    sget v3, Lorg/chromium/chrome/R$drawable;->btn_reload_stop:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 84
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->loadingStateChanged(Z)V

    .line 86
    sget v1, Lorg/chromium/chrome/R$id;->share_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 87
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mShowShare:Z

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 88
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mShowShare:Z

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 90
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mShowBookmark:Z

    if-eqz v1, :cond_0

    .line 91
    sget v1, Lorg/chromium/chrome/R$id;->bookmark_this_page_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 92
    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->updateBookmarkMenuItem(Landroid/view/MenuItem;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 100
    :goto_0
    sget v0, Lorg/chromium/chrome/R$id;->open_in_browser_id:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mDefaultBrowserFetcher:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :goto_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mIsCustomEntryAdded:Z

    if-nez v0, :cond_1

    .line 110
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mIsCustomEntryAdded:Z

    move v1, v2

    .line 111
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mMenuEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mMenuEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v2, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mItemToIndexMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 96
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->icon_row_menu_id:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_this_page_id:I

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->removeItem(I)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    :goto_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v3, Lorg/chromium/chrome/R$string;->menu_open_in_product_default:I

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/ChromeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 117
    :cond_1
    return-void

    .line 104
    :catch_1
    move-exception v0

    goto :goto_3
.end method
