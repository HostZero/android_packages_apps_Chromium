.class public Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;
.super Ljava/lang/Object;
.source "ChromeContextMenuPopulator.java"

# interfaces
.implements Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BASE_WHITELIST:[I

.field public static final CUSTOM_TAB_MODE:I = 0x1

.field private static final CUSTOM_TAB_MODE_WHITELIST:[I

.field public static final FULLSCREEN_TAB_MODE:I = 0x2

.field private static final FULLSCREEN_TAB_MODE_WHITELIST:[I

.field public static final NORMAL_MODE:I

.field private static final NORMAL_MODE_WHITELIST:[I


# instance fields
.field private final mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    const-class v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->$assertionsDisabled:Z

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_copy_link_address:I

    aput v3, v0, v2

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_copy_email_address:I

    aput v3, v0, v1

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_copy_link_text:I

    aput v3, v0, v5

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_save_link_as:I

    aput v3, v0, v6

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_save_image:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Lorg/chromium/chrome/R$id;->contextmenu_share_image:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lorg/chromium/chrome/R$id;->contextmenu_save_video:I

    aput v4, v0, v3

    sput-object v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->BASE_WHITELIST:[I

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_load_images:I

    aput v3, v0, v2

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_open_in_new_tab:I

    aput v3, v0, v1

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_open_in_incognito_tab:I

    aput v3, v0, v5

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_save_link_as:I

    aput v3, v0, v6

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_load_original_image:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Lorg/chromium/chrome/R$id;->contextmenu_open_image_in_new_tab:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lorg/chromium/chrome/R$id;->contextmenu_search_by_image:I

    aput v4, v0, v3

    sput-object v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->NORMAL_MODE_WHITELIST:[I

    .line 55
    new-array v0, v5, [I

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_open_image:I

    aput v3, v0, v2

    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_search_by_image:I

    aput v3, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->CUSTOM_TAB_MODE_WHITELIST:[I

    .line 61
    new-array v0, v1, [I

    sget v1, Lorg/chromium/chrome/R$id;->menu_id_open_in_chrome:I

    aput v1, v0, v2

    sput-object v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->FULLSCREEN_TAB_MODE_WHITELIST:[I

    return-void

    :cond_0
    move v0, v2

    .line 27
    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;I)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    .line 156
    iput p2, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mMode:I

    .line 157
    return-void
.end method

.method private removeUnsupportedItems(Landroid/view/ContextMenu;[I)V
    .locals 4

    .prologue
    .line 260
    sget-object v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->BASE_WHITELIST:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 261
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 262
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 263
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 264
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {p2, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_0

    sget-object v2, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->BASE_WHITELIST:[I

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_0

    .line 266
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 267
    add-int/lit8 v0, v0, -0x1

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    return-void
.end method

.method private setHeaderText(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 347
    new-instance v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;

    invoke-direct {v0, p1, p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    invoke-interface {p2, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 349
    return-void
.end method


# virtual methods
.method public buildContextMenu(Landroid/view/ContextMenu;Landroid/content/Context;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "about:blank"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 167
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->setHeaderText(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mMenuInflater:Landroid/view/MenuInflater;

    .line 174
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mMenuInflater:Landroid/view/MenuInflater;

    sget v3, Lorg/chromium/chrome/R$menu;->chrome_context_menu:I

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 176
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_group_anchor:I

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isAnchor()Z

    move-result v3

    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 177
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_group_image:I

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isImage()Z

    move-result v3

    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 178
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_group_video:I

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isVideo()Z

    move-result v3

    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->isIncognitoSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    :cond_2
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_open_in_incognito_tab:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 184
    :cond_3
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isImage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    :cond_4
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_copy_link_text:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    :cond_5
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_copy_link_address:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    :goto_1
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_save_link_as:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isDownloadableScheme(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->imageWasFetchedLoFi()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->wasLoFiModeActiveOnMainFrame()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->canUseDataReductionProxy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 201
    :cond_6
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_load_images:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 211
    :goto_2
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 212
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_save_video:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isDownloadableScheme(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 250
    :cond_7
    :goto_3
    iget v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mMode:I

    if-ne v0, v6, :cond_f

    .line 251
    sget-object v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->FULLSCREEN_TAB_MODE_WHITELIST:[I

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->removeUnsupportedItems(Landroid/view/ContextMenu;[I)V

    .line 257
    :goto_4
    return-void

    .line 168
    :cond_8
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->setHeaderText(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_9
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_copy_email_address:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 207
    :cond_a
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyLoFiUIAction(I)V

    goto :goto_2

    .line 214
    :cond_b
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isImage()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->imageWasFetchedLoFi()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 215
    invoke-static {v6}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyLoFiUIAction(I)V

    .line 219
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_save_image:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_open_image:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_search_by_image:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 222
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_share_image:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 223
    :cond_c
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isImage()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->imageWasFetchedLoFi()Z

    move-result v0

    if-nez v0, :cond_7

    .line 224
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_load_original_image:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_save_image:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isDownloadableScheme(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 231
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_open_image:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    :cond_d
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    .line 234
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isDownloadableScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isSearchByImageAvailable()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getDefaultSearchEngineTemplateUrl()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    move-result-object v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 241
    :goto_5
    sget v3, Lorg/chromium/chrome/R$id;->contextmenu_search_by_image:I

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 242
    if-eqz v0, :cond_7

    .line 243
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_search_by_image:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->contextmenu_search_web_for_image:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getDefaultSearchEngineTemplateUrl()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->getShortName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 234
    goto :goto_5

    .line 252
    :cond_f
    iget v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mMode:I

    if-ne v0, v1, :cond_10

    .line 253
    sget-object v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->CUSTOM_TAB_MODE_WHITELIST:[I

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->removeUnsupportedItems(Landroid/view/ContextMenu;[I)V

    goto/16 :goto_4

    .line 255
    :cond_10
    sget-object v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->NORMAL_MODE_WHITELIST:[I

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->removeUnsupportedItems(Landroid/view/ContextMenu;[I)V

    goto/16 :goto_4
.end method

.method public onItemSelected(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)Z
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_open_in_new_tab:I

    if-ne p3, v0, :cond_1

    .line 275
    invoke-static {p2, v2}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 276
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onOpenInNewTab(Ljava/lang/String;Lorg/chromium/content_public/common/Referrer;)V

    .line 343
    :cond_0
    :goto_0
    return v3

    .line 277
    :cond_1
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_open_in_incognito_tab:I

    if-ne p3, v0, :cond_2

    .line 278
    invoke-static {p2, v3}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onOpenInNewIncognitoTab(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_2
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_open_image:I

    if-ne p3, v0, :cond_3

    .line 281
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 282
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onOpenImageUrl(Ljava/lang/String;Lorg/chromium/content_public/common/Referrer;)V

    goto :goto_0

    .line 283
    :cond_3
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_open_image_in_new_tab:I

    if-ne p3, v0, :cond_4

    .line 284
    const/16 v0, 0x8

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 285
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onOpenImageInNewTab(Ljava/lang/String;Lorg/chromium/content_public/common/Referrer;)V

    goto :goto_0

    .line 286
    :cond_4
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_load_images:I

    if-ne p3, v0, :cond_5

    .line 287
    const/16 v0, 0xc

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 288
    invoke-static {v5}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyLoFiUIAction(I)V

    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onReloadLoFiImages()V

    goto :goto_0

    .line 291
    :cond_5
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_load_original_image:I

    if-ne p3, v0, :cond_7

    .line 292
    const/16 v0, 0xd

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 293
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyLoFiUIAction(I)V

    .line 295
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->wasLoFiLoadImageRequestedBefore()Z

    move-result v0

    if-nez v0, :cond_6

    .line 296
    invoke-static {v4}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyLoFiUIAction(I)V

    .line 298
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->setLoFiLoadImageRequested()V

    .line 300
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onLoadOriginalImage()V

    goto :goto_0

    .line 301
    :cond_7
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_copy_link_address:I

    if-ne p3, v0, :cond_8

    .line 302
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 303
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getUnfilteredLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onSaveToClipboard(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 305
    :cond_8
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_copy_email_address:I

    if-ne p3, v0, :cond_9

    .line 306
    invoke-static {p2, v1}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 307
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onSaveToClipboard(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 309
    :cond_9
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_copy_link_text:I

    if-ne p3, v0, :cond_a

    .line 310
    invoke-static {p2, v4}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 311
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onSaveToClipboard(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 313
    :cond_a
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_save_image:I

    if-ne p3, v0, :cond_b

    .line 314
    invoke-static {p2, v5}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 315
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->startDownload(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->isDataReductionProxyEnabledForURL(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->startContextMenuDownload(ZZ)V

    goto/16 :goto_0

    .line 319
    :cond_b
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_save_video:I

    if-ne p3, v0, :cond_c

    .line 320
    const/16 v0, 0xe

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 321
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->startDownload(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1, v2, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->startContextMenuDownload(ZZ)V

    goto/16 :goto_0

    .line 324
    :cond_c
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_save_link_as:I

    if-ne p3, v0, :cond_d

    .line 325
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 326
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getUnfilteredLinkUrl()Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-interface {v1, v0, v3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->startDownload(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->recordSaveLinkTypes(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1, v3, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->startContextMenuDownload(ZZ)V

    goto/16 :goto_0

    .line 331
    :cond_d
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_search_by_image:I

    if-ne p3, v0, :cond_e

    .line 332
    const/16 v0, 0xb

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 333
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->searchForImage()V

    goto/16 :goto_0

    .line 334
    :cond_e
    sget v0, Lorg/chromium/chrome/R$id;->contextmenu_share_image:I

    if-ne p3, v0, :cond_f

    .line 335
    const/16 v0, 0x13

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator$ContextMenuUma;->record(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 336
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->shareImage()V

    goto/16 :goto_0

    .line 337
    :cond_f
    sget v0, Lorg/chromium/chrome/R$id;->menu_id_open_in_chrome:I

    if-ne p3, v0, :cond_10

    .line 338
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->mDelegate:Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;->onOpenInChrome(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :cond_10
    sget-boolean v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public shouldShowContextMenu(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Z
    .locals 1

    .prologue
    .line 161
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isAnchor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
