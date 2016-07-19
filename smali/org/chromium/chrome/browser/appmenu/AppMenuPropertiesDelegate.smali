.class public Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
.super Ljava/lang/Object;
.source "AppMenuPropertiesDelegate.java"


# instance fields
.field protected final mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field protected mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

.field protected mReloadMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 44
    return-void
.end method

.method private disableEnableMenuItem(Landroid/view/Menu;IZZZ)V
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 214
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 215
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-interface {v1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    invoke-interface {v1, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 218
    if-eqz p5, :cond_1

    .line 219
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/ManagedPreferencesUtils;->getManagedByEnterpriseIconId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    .line 225
    :cond_2
    return-void
.end method


# virtual methods
.method public getFooterResourceId()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public loadingStateChanged(Z)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mReloadMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mReloadMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 197
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mReloadMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_2

    sget v0, Lorg/chromium/chrome/R$string;->accessibility_btn_stop_loading:I

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 200
    :cond_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_2
    sget v0, Lorg/chromium/chrome/R$string;->accessibility_btn_refresh:I

    goto :goto_1
.end method

.method public onMenuDismissed()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mReloadMenuItem:Landroid/view/MenuItem;

    .line 207
    return-void
.end method

.method public prepareMenu(Landroid/view/Menu;)V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->isInOverviewMode()Z

    move-result v1

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v9

    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v10

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 71
    if-nez v1, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    move v2, v6

    .line 72
    :goto_0
    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v6

    .line 73
    :goto_1
    if-nez v2, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v6

    :goto_2
    move v8, v1

    move v1, v2

    .line 80
    :goto_3
    sget v2, Lorg/chromium/chrome/R$id;->PAGE_MENU:I

    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 81
    sget v2, Lorg/chromium/chrome/R$id;->OVERVIEW_MODE_MENU:I

    invoke-interface {p1, v2, v8}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 82
    sget v2, Lorg/chromium/chrome/R$id;->TABLET_EMPTY_MODE_MENU:I

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 84
    if-eqz v1, :cond_3

    if-eqz v10, :cond_3

    .line 85
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "chrome://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "chrome-native://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_0
    move v0, v6

    .line 90
    :goto_4
    sget v1, Lorg/chromium/chrome/R$id;->icon_row_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->isTablet()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v6

    :goto_5
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 91
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    sget v1, Lorg/chromium/chrome/R$id;->forward_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 94
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->canGoForward()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 96
    sget v1, Lorg/chromium/chrome/R$id;->reload_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mReloadMenuItem:Landroid/view/MenuItem;

    .line 97
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mReloadMenuItem:Landroid/view/MenuItem;

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_reload_stop:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->loadingStateChanged(Z)V

    .line 100
    sget v1, Lorg/chromium/chrome/R$id;->bookmark_this_page_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 101
    invoke-virtual {p0, v1, v10}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->updateBookmarkMenuItem(Landroid/view/MenuItem;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 104
    :cond_1
    sget v1, Lorg/chromium/chrome/R$id;->update_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getInstance()Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->shouldShowMenuItem(Lorg/chromium/chrome/browser/ChromeActivity;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    sget v1, Lorg/chromium/chrome/R$id;->recent_tabs_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 109
    if-nez v9, :cond_d

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->canAllowSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v6

    :goto_6
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    sget v1, Lorg/chromium/chrome/R$string;->menu_recent_tabs:I

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 112
    sget v1, Lorg/chromium/chrome/R$id;->all_bookmarks_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v3, Lorg/chromium/chrome/R$string;->menu_bookmarks:I

    invoke-static {v3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/ChromeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 117
    sget v1, Lorg/chromium/chrome/R$id;->share_row_menu_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_e

    move v1, v6

    :goto_7
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v2, Lorg/chromium/chrome/R$id;->direct_share_menu_id:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/share/ShareHelper;->configureDirectShareMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;)V

    .line 123
    sget v1, Lorg/chromium/chrome/R$id;->find_in_page_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-eqz v1, :cond_f

    move v1, v6

    :goto_8
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    sget v1, Lorg/chromium/chrome/R$id;->add_to_homescreen_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 131
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v1}, Lorg/chromium/chrome/browser/ShortcutHelper;->isAddToHomeIntentSupported(Landroid/content/Context;)Z

    move-result v1

    .line 133
    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    if-nez v9, :cond_10

    move v1, v6

    :goto_9
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 138
    sget v1, Lorg/chromium/chrome/R$id;->request_desktop_site_id:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 139
    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_2
    move v0, v6

    :goto_a
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->getUseDesktopUserAgent()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 141
    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v2, Lorg/chromium/chrome/R$string;->menu_request_desktop_site_on:I

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getChromeApplication()Lorg/chromium/chrome/browser/ChromeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->getPrintingController()Lorg/chromium/printing/PrintingController;

    move-result-object v0

    .line 147
    sget v2, Lorg/chromium/chrome/R$id;->print_id:I

    if-eqz v0, :cond_13

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_13

    move v3, v6

    :goto_c
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lorg/chromium/printing/PrintingController;->isBusy()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isPrintingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    move v4, v6

    :goto_d
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isPrintingManaged()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->disableEnableMenuItem(Landroid/view/Menu;IZZZ)V

    .line 154
    sget v0, Lorg/chromium/chrome/R$id;->reader_mode_prefs_id:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->isDistilledPage(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    :cond_3
    if-eqz v8, :cond_4

    .line 159
    if-eqz v9, :cond_15

    .line 161
    sget v0, Lorg/chromium/chrome/R$id;->close_all_tabs_menu_id:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    sget v0, Lorg/chromium/chrome/R$id;->close_all_incognito_tabs_menu_id:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 174
    :cond_4
    :goto_e
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "chrome-native://newtab/"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v9, :cond_17

    :cond_5
    move v3, v6

    .line 182
    :goto_f
    sget v2, Lorg/chromium/chrome/R$id;->new_incognito_tab_menu_id:I

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isIncognitoModeEnabled()Z

    move-result v4

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isIncognitoModeManaged()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->disableEnableMenuItem(Landroid/view/Menu;IZZZ)V

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->prepareMenu(Landroid/view/Menu;)V

    .line 187
    return-void

    :cond_6
    move v2, v7

    .line 71
    goto/16 :goto_0

    :cond_7
    move v1, v7

    .line 72
    goto/16 :goto_1

    :cond_8
    move v0, v7

    .line 73
    goto/16 :goto_2

    .line 75
    :cond_9
    if-nez v1, :cond_a

    move v0, v6

    :goto_10
    move v8, v1

    move v1, v0

    move v0, v7

    .line 77
    goto/16 :goto_3

    :cond_a
    move v0, v7

    .line 75
    goto :goto_10

    :cond_b
    move v0, v7

    .line 86
    goto/16 :goto_4

    :cond_c
    move v1, v7

    .line 90
    goto/16 :goto_5

    :cond_d
    move v1, v7

    .line 109
    goto/16 :goto_6

    :cond_e
    move v1, v7

    .line 117
    goto/16 :goto_7

    :cond_f
    move v1, v7

    .line 123
    goto/16 :goto_8

    :cond_10
    move v1, v7

    .line 133
    goto/16 :goto_9

    :cond_11
    move v0, v7

    .line 139
    goto/16 :goto_a

    .line 141
    :cond_12
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v2, Lorg/chromium/chrome/R$string;->menu_request_desktop_site_off:I

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_13
    move v3, v7

    .line 147
    goto/16 :goto_c

    :cond_14
    move v4, v7

    goto/16 :goto_d

    .line 166
    :cond_15
    sget v0, Lorg/chromium/chrome/R$id;->close_all_incognito_tabs_menu_id:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 168
    sget v0, Lorg/chromium/chrome/R$id;->close_all_tabs_menu_id:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTotalTabCount()I

    move-result v0

    if-lez v0, :cond_16

    move v0, v6

    :goto_11
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_e

    :cond_16
    move v0, v7

    goto :goto_11

    :cond_17
    move v3, v7

    .line 174
    goto :goto_f
.end method

.method public setBookmarkBridge(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    .line 241
    return-void
.end method

.method public shouldShowAppMenu()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->shouldShowAppMenu()Z

    move-result v0

    return v0
.end method

.method protected updateBookmarkMenuItem(Landroid/view/MenuItem;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->isEditBookmarksEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 251
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getBookmarkId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 252
    sget v0, Lorg/chromium/chrome/R$drawable;->btn_star_filled:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 253
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v1, Lorg/chromium/chrome/R$string;->edit_bookmark:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    sget v0, Lorg/chromium/chrome/R$drawable;->btn_star:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 257
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 258
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method
