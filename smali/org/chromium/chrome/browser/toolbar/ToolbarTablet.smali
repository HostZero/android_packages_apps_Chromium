.class public Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;
.super Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
.source "ToolbarTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

.field private mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mBookmarkListener:Landroid/view/View$OnClickListener;

.field private mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mIsInTabSwitcherMode:Z

.field private mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

.field private mNavigationPopup:Lorg/chromium/chrome/browser/NavigationPopup;

.field private mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mShowTabStack:Z

.field private mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

.field private mTabSwitcherButtonDrawableLight:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

.field private mTabSwitcherListener:Landroid/view/View$OnClickListener;

.field private mUseLightColorAssets:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mIsInTabSwitcherMode:Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    return-object v0
.end method

.method private displayNavigationPopup(ZLandroid/view/View;)V
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/chromium/chrome/browser/NavigationPopup;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;Landroid/content/Context;Lorg/chromium/content_public/browser/NavigationController;Z)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mNavigationPopup:Lorg/chromium/chrome/browser/NavigationPopup;

    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mNavigationPopup:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/NavigationPopup;->setAnchorView(Landroid/view/View;)V

    .line 245
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->menu_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 246
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mNavigationPopup:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/NavigationPopup;->setWidth(I)V

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mNavigationPopup:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/NavigationPopup;->shouldBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mNavigationPopup:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/NavigationPopup;->show()V

    goto :goto_0
.end method

.method private updateSwitcherButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mShowTabStack:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 281
    return-void

    .line 279
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic finishAnimations()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->finishAnimations()V

    return-void
.end method

.method public bridge synthetic getFirstDrawTime()J
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getFirstDrawTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    return-object v0
.end method

.method public bridge synthetic getLocationBarContentRect(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBarContentRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getPositionRelativeToContainer(Landroid/view/View;[I)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getPositionRelativeToContainer(Landroid/view/View;[I)V

    return-void
.end method

.method public bridge synthetic getTabStripHeight()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getTabStripHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    return-void
.end method

.method public isReadyForTextureCapture()Z
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->urlHasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isShowingAppMenuUpdateBadge()Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->isShowingAppMenuUpdateBadge()Z

    move-result v0

    return v0
.end method

.method public onAccessibilityStatusChanged(Z)V
    .locals 2

    .prologue
    .line 395
    if-nez p1, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-tablet-tab-stack"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mShowTabStack:Z

    .line 397
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->updateSwitcherButtonVisibility(Z)V

    .line 398
    return-void

    .line 395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne v0, p1, :cond_1

    .line 254
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->openHomepage()V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne v0, p1, :cond_2

    .line 256
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->back()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string/jumbo v0, "MobileToolbarBack"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v0, "MobileTabClobbered"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne v0, p1, :cond_3

    .line 260
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->forward()Z

    .line 261
    const-string/jumbo v0, "MobileToolbarForward"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v0, "MobileTabClobbered"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne v0, p1, :cond_4

    .line 264
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->stopOrReloadCurrentTab()V

    goto :goto_0

    .line 265
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne v0, p1, :cond_5

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 268
    const-string/jumbo v0, "MobileToolbarToggleBookmark"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_0

    .line 271
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->cancelAppMenuUpdateBadgeAnimation()V

    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 67
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onFinishInflate()V

    .line 68
    sget v0, Lorg/chromium/chrome/R$id;->location_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/LocationBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    .line 70
    sget v0, Lorg/chromium/chrome/R$id;->home_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 71
    sget v0, Lorg/chromium/chrome/R$id;->back_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 72
    sget v0, Lorg/chromium/chrome/R$id;->forward_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 73
    sget v0, Lorg/chromium/chrome/R$id;->refresh_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAccessibilityModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v4, "enable-tablet-tab-stack"

    invoke-virtual {v0, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mShowTabStack:Z

    .line 77
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->createTabSwitcherDrawable(Landroid/content/res/Resources;Z)Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    .line 79
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->createTabSwitcherDrawable(Landroid/content/res/Resources;Z)Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherButtonDrawableLight:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    .line 82
    sget v0, Lorg/chromium/chrome/R$id;->tab_switcher_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mShowTabStack:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->updateSwitcherButtonVisibility(Z)V

    .line 86
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 88
    sget v0, Lorg/chromium/chrome/R$id;->menu_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 89
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mMenuButtonWrapper:Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->shouldShowMenuButton()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mMenuButtonWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mMenuButtonWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$dimen;->tablet_toolbar_end_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v1, v1, v2, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 97
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 74
    goto :goto_0

    :cond_3
    move v0, v3

    .line 89
    goto :goto_1
.end method

.method protected onHomeButtonUpdate(Z)V
    .locals 2

    .prologue
    .line 412
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 413
    return-void

    .line 412
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onNativeLibraryReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onNativeLibraryReady()V

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->onNativeLibraryReady()V

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$1;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setLongClickable(Z)V

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setLongClickable(Z)V

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$3;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$5;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 208
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->isHomepageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public onTabOrModelChanged()V
    .locals 3

    .prologue
    .line 290
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onTabOrModelChanged()V

    .line 291
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->isIncognito()Z

    move-result v1

    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mUseLightColorAssets:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mUseLightColorAssets:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v1, :cond_2

    .line 293
    :cond_0
    if-eqz v1, :cond_3

    sget v0, Lorg/chromium/chrome/R$color;->incognito_primary_color:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->setBackgroundResource(I)V

    .line 296
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLightModeTint:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 297
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLightModeTint:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 298
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLightModeTint:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 299
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLightModeTint:Landroid/content/res/ColorStateList;

    :goto_4
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 300
    if-eqz v1, :cond_8

    .line 301
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 306
    :goto_5
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherButtonDrawableLight:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->updateVisualsForState()V

    .line 309
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mShowMenuBadge:Z

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->setAppMenuUpdateBadgeDrawable(Z)V

    .line 312
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mUseLightColorAssets:Ljava/lang/Boolean;

    .line 314
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setUrlBarFocus(Z)V

    .line 315
    return-void

    .line 293
    :cond_3
    sget v0, Lorg/chromium/chrome/R$color;->default_primary_color:I

    goto :goto_0

    .line 296
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mDarkModeTint:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 297
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mDarkModeTint:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 298
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mDarkModeTint:Landroid/content/res/ColorStateList;

    goto :goto_3

    .line 299
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mDarkModeTint:Landroid/content/res/ColorStateList;

    goto :goto_4

    .line 304
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_5

    .line 306
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    goto :goto_6
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 230
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mNavigationPopup:Lorg/chromium/chrome/browser/NavigationPopup;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mNavigationPopup:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/NavigationPopup;->dismiss()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mNavigationPopup:Lorg/chromium/chrome/browser/NavigationPopup;

    .line 234
    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onWindowFocusChanged(Z)V

    .line 235
    return-void
.end method

.method public bridge synthetic removeAppMenuUpdateBadge(Z)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->removeAppMenuUpdateBadge(Z)V

    return-void
.end method

.method public setBookmarkClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkListener:Landroid/view/View$OnClickListener;

    .line 403
    return-void
.end method

.method public bridge synthetic setCloseButtonImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setCloseButtonImageResource(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setCustomActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setCustomActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setCustomTabCloseClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setCustomTabCloseClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setForceTextureCapture(Z)Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setForceTextureCapture(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setLayoutUpdateHost(Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setLayoutUpdateHost(Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;)V

    return-void
.end method

.method public bridge synthetic setOnNewTabClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setOnNewTabClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTabSwitcherClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherListener:Landroid/view/View$OnClickListener;

    .line 408
    return-void
.end method

.method public bridge synthetic setPaintInvalidator(Lorg/chromium/chrome/browser/compositor/Invalidator;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setPaintInvalidator(Lorg/chromium/chrome/browser/compositor/Invalidator;)V

    return-void
.end method

.method public bridge synthetic setReturnButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setReturnButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setTabSwitcherMode(ZZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mShowTabStack:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mIsInTabSwitcherMode:Z

    .line 367
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mShowMenuBadge:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mMenuBadge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->setMenuButtonContentDescription(Z)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mIsInTabSwitcherMode:Z

    .line 377
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mShowMenuBadge:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->setAppMenuUpdateBadgeToVisible(Z)V

    goto :goto_0
.end method

.method public bridge synthetic setTextureCaptureMode(Z)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setTextureCaptureMode(Z)V

    return-void
.end method

.method public bridge synthetic setUrlBarHidden(Z)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setUrlBarHidden(Z)V

    return-void
.end method

.method public bridge synthetic shouldIgnoreSwipeGesture()Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->shouldIgnoreSwipeGesture()Z

    move-result v0

    return v0
.end method

.method public showAppMenuUpdateBadge()V
    .locals 1

    .prologue
    .line 422
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->showAppMenuUpdateBadge()V

    .line 423
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mIsInTabSwitcherMode:Z

    if-nez v0, :cond_1

    .line 424
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mUseLightColorAssets:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mUseLightColorAssets:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->setAppMenuUpdateBadgeDrawable(Z)V

    .line 427
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->setAppMenuUpdateBadgeToVisible(Z)V

    .line 429
    :cond_1
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 215
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne v1, p1, :cond_0

    .line 217
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->displayNavigationPopup(ZLandroid/view/View;)V

    .line 224
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne v1, p1, :cond_1

    .line 221
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->displayNavigationPopup(ZLandroid/view/View;)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method protected updateBackButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 319
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mIsInTabSwitcherMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 320
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 321
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setFocusable(Z)V

    .line 322
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateBookmarkButton(ZZ)V
    .locals 3

    .prologue
    .line 348
    if-eqz p1, :cond_1

    .line 349
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_star_filled:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setImageResource(I)V

    .line 351
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLightModeTint:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 359
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 360
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$color;->blue_mode_tint:I

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_star:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setImageResource(I)V

    .line 357
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBookmarkButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLightModeTint:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mDarkModeTint:Landroid/content/res/ColorStateList;

    goto :goto_2
.end method

.method public bridge synthetic updateButtonVisibility()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->updateButtonVisibility()V

    return-void
.end method

.method protected updateForwardButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 326
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mIsInTabSwitcherMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 327
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 328
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setFocusable(Z)V

    .line 329
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateReloadButtonVisibility(Z)V
    .locals 3

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_close:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setImageResource(I)V

    .line 335
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_btn_stop_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 342
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mLightModeTint:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 343
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mIsInTabSwitcherMode:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 344
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_toolbar_reload:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setImageResource(I)V

    .line 339
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mReloadButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_btn_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mDarkModeTint:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 343
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected updateTabCountVisuals(I)V
    .locals 6

    .prologue
    .line 386
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mAccessibilitySwitcherButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_tabswitcher_toggle:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->updateForTabCount(IZ)V

    .line 390
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mTabSwitcherButtonDrawableLight:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->updateForTabCount(IZ)V

    .line 391
    return-void
.end method
