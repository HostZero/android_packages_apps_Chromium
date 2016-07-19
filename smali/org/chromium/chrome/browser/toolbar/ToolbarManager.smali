.class public Lorg/chromium/chrome/browser/toolbar/ToolbarManager;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;
.implements Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MINIMUM_LOAD_PROGRESS:I = 0x5


# instance fields
.field private final mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

.field private final mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

.field private mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

.field private final mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

.field private mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

.field private final mBookmarksObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

.field private final mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

.field private mCurrentProfile:Lorg/chromium/chrome/browser/profiles/Profile;

.field private mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

.field private final mFindToolbarObservers:Ljava/util/List;

.field private mFullscreenFindInPageToken:I

.field private mFullscreenFocusToken:I

.field private mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

.field private mFullscreenMenuToken:I

.field private mHomepageStateListener:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;

.field private mInitializedWithNative:Z

.field private final mLoadProgressSimulator:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

.field private final mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

.field private mMenuDelegatePhone:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$MenuDelegatePhone;

.field private mNativeLibraryReady:Z

.field private final mOverviewModeObserver:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

.field private mPreselectedTabId:I

.field private final mSceneChangeObserver:Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;

.field private mShouldUpdateTabCount:Z

.field private mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

.field private final mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

.field private mTabRestoreCompleted:Z

.field private mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

.field private final mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

.field private final mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;Lorg/chromium/chrome/browser/compositor/Invalidator;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFocusToken:I

    .line 138
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFindInPageToken:I

    .line 139
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenMenuToken:I

    .line 141
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mPreselectedTabId:I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mShouldUpdateTabCount:Z

    .line 163
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    .line 192
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    .line 193
    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    .line 194
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 196
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->toolbar:I

    invoke-virtual {p2, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p5}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setPaintInvalidator(Lorg/chromium/chrome/browser/compositor/Invalidator;)V

    .line 200
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    invoke-direct {v0, p1, v1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;-><init>()V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->setCustomSelectionActionModeCallback(Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;)V

    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getTabStripHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->setTabStripHeight(I)V

    .line 205
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$2;

    invoke-direct {v0, p0, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$2;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;)V

    .line 214
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setMenuDelegatePhone(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$MenuDelegatePhone;)V

    .line 216
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setToolbarDataProvider(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;)V

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setUrlFocusChangeListener(Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;)V

    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->getActionModeCallback()Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setDefaultTextEditActionModeCallback(Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;)V

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    new-instance v1, Lorg/chromium/chrome/browser/WindowDelegate;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/WindowDelegate;-><init>(Landroid/view/Window;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->getActionBarDelegate()Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->initializeControls(Lorg/chromium/chrome/browser/WindowDelegate;Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;Lorg/chromium/ui/base/WindowAndroid;)V

    .line 226
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setMenuHandler(Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;)V

    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    invoke-virtual {v0, v1, p0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    .line 229
    iput-object p4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    .line 231
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$3;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mHomepageStateListener:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;

    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mHomepageStateListener:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->addListener(Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;)V

    .line 240
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$4;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 254
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$5;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 291
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 472
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$7;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$7;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarksObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarObservers:Ljava/util/List;

    .line 480
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->addFindToolbarObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V

    .line 502
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$9;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$9;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mOverviewModeObserver:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    .line 521
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$10;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$10;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mSceneChangeObserver:Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;

    .line 538
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLoadProgressSimulator:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    .line 539
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->finishLoadProgress(Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateLoadProgress(I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabLoadingState(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLoadProgressSimulator:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ActionModeController;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateBookmarkButtonStatus()V

    return-void
.end method

.method static synthetic access$1800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFindInPageToken:I

    return v0
.end method

.method static synthetic access$1902(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFindInPageToken:I

    return p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mHomepageStateListener:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarObservers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mOverviewModeObserver:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mSceneChangeObserver:Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V

    return-void
.end method

.method static synthetic access$3000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->registerTemplateUrlObserver()V

    return-void
.end method

.method static synthetic access$3100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenMenuToken:I

    return v0
.end method

.method static synthetic access$3102(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenMenuToken:I

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabCount()V

    return-void
.end method

.method static synthetic access$502(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabRestoreCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->handleTabRestoreCompleted()V

    return-void
.end method

.method static synthetic access$702(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mPreselectedTabId:I

    return p1
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/omnibox/LocationBar;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    return-object v0
.end method

.method private finishLoadProgress(Z)V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLoadProgressSimulator:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->cancel()V

    .line 1141
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->finishLoadProgress(Z)V

    .line 1142
    return-void
.end method

.method private handleTabRestoreCompleted()V
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabRestoreCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mNativeLibraryReady:Z

    if-nez v0, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onStateRestored()V

    .line 793
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabCount()V

    goto :goto_0
.end method

.method private onNativeLibraryReady()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 757
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mNativeLibraryReady:Z

    .line 758
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onNativeLibraryReady()V

    .line 760
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isTabSwitchingEnabledInDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mShouldUpdateTabCount:Z

    .line 766
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    .line 767
    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$13;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$13;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;)V

    .line 775
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->registerLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V

    .line 776
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 777
    invoke-interface {v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;->onTemplateUrlServiceLoaded()V

    .line 782
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 783
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_1

    .line 779
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->load()V

    goto :goto_0

    .line 785
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V

    .line 786
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isTabStateInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabRestoreCompleted:Z

    .line 787
    :cond_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->handleTabRestoreCompleted()V

    .line 788
    return-void
.end method

.method private refreshSelectedTab()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1046
    const/4 v0, 0x0

    .line 1047
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mPreselectedTabId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1048
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mPreselectedTabId:I

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1050
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1052
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->isIncognito()Z

    move-result v2

    .line 1053
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 1055
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    .line 1057
    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v4, v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->setTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    .line 1059
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateCurrentTabDisplayStatus()V

    .line 1060
    if-ne v3, v0, :cond_2

    if-eq v2, v1, :cond_6

    .line 1061
    :cond_2
    if-eq v3, v0, :cond_4

    .line 1062
    if-eqz v3, :cond_3

    .line 1063
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 1064
    invoke-virtual {v3, v5}, Lorg/chromium/chrome/browser/tab/Tab;->setIsAllowedToReturnToExternalApp(Z)V

    .line 1066
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 1068
    :cond_4
    if-eqz v1, :cond_a

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$color;->incognito_primary_color:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    .line 1073
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v2

    .line 1074
    :cond_5
    invoke-direct {p0, v2, v5}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updatePrimaryColor(IZ)V

    .line 1076
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onTabOrModelChanged()V

    .line 1078
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isLoadingToDifferentDocument()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1080
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onNavigatedToDifferentPage()V

    .line 1084
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 1085
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mCurrentProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    if-eq v1, v0, :cond_8

    .line 1086
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->destroy()V

    .line 1087
    :cond_7
    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    .line 1088
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarksObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 1089
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->setBookmarkBridge(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;)V

    .line 1090
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setAutocompleteProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 1091
    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mCurrentProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 1094
    :cond_8
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V

    .line 1095
    return-void

    .line 1055
    :cond_9
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v1

    goto/16 :goto_0

    .line 1068
    :cond_a
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    goto :goto_1
.end method

.method private registerTemplateUrlObserver()V
    .locals 2

    .prologue
    .line 735
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    .line 736
    sget-boolean v1, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 737
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    .line 753
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->addObserver(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)V

    .line 754
    return-void
.end method

.method private setMenuHandler(Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;)V
    .locals 2

    .prologue
    .line 801
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->addObserver(Lorg/chromium/chrome/browser/appmenu/AppMenuObserver;)V

    .line 815
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    .line 816
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$15;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$15;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->setOnAppMenuShownListener(Ljava/lang/Runnable;)V

    .line 822
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setMenuButtonHelper(Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    .line 823
    return-void
.end method

.method private updateBookmarkButtonStatus()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1024
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 1025
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getBookmarkId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    move v2, v1

    .line 1027
    :goto_0
    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->isEditBookmarksEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 1029
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->updateBookmarkButton(ZZ)V

    .line 1030
    return-void

    :cond_2
    move v2, v0

    .line 1025
    goto :goto_0
.end method

.method private updateButtonStatus()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1010
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 1011
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingSadTab()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1013
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->updateButtonVisibility()V

    .line 1014
    iget-object v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    invoke-virtual {v5, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->updateBackButtonVisibility(Z)V

    .line 1015
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->canGoForward()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->updateForwardButtonVisibility(Z)V

    .line 1016
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateReloadState(Z)V

    .line 1017
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateBookmarkButtonStatus()V

    .line 1019
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getMenuButtonWrapper()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->shouldShowMenuButton()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    return-void

    :cond_0
    move v0, v2

    .line 1011
    goto :goto_0

    :cond_1
    move v3, v2

    .line 1014
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1015
    goto :goto_2

    .line 1019
    :cond_3
    const/16 v2, 0x8

    goto :goto_3
.end method

.method private updateCurrentTabDisplayStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1098
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setUrlToPageUrl()V

    .line 1101
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabLoadingState(Z)V

    .line 1103
    if-nez v0, :cond_0

    .line 1104
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->finishLoadProgress(Z)V

    .line 1120
    :goto_0
    return-void

    .line 1108
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLoadProgressSimulator:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->cancel()V

    .line 1110
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1111
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1114
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->startLoadProgress()V

    .line 1115
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateLoadProgress(I)V

    goto :goto_0

    .line 1118
    :cond_1
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->finishLoadProgress(Z)V

    goto :goto_0
.end method

.method private updateLoadProgress(I)V
    .locals 3

    .prologue
    .line 1132
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1135
    :cond_0
    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1136
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setLoadProgress(F)V

    goto :goto_0
.end method

.method private updatePrimaryColor(IZ)V
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getPrimaryColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 916
    :goto_0
    if-nez v0, :cond_1

    .line 920
    :goto_1
    return-void

    .line 915
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->setPrimaryColor(I)V

    .line 919
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onPrimaryColorChanged(Z)V

    goto :goto_1
.end method

.method private updateReloadState(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1033
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 1035
    if-nez p1, :cond_2

    .line 1036
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mNativeLibraryReady:Z

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1038
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->updateReloadButtonVisibility(Z)V

    .line 1039
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mMenuDelegatePhone:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$MenuDelegatePhone;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mMenuDelegatePhone:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$MenuDelegatePhone;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$MenuDelegatePhone;->updateReloadButtonState(Z)V

    .line 1040
    :cond_3
    return-void
.end method

.method private updateTabCount()V
    .locals 2

    .prologue
    .line 1001
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabRestoreCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mShouldUpdateTabCount:Z

    if-nez v0, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->updateTabCountVisuals(I)V

    goto :goto_0
.end method

.method private updateTabLoadingState(Z)V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->updateLoadingState(Z)V

    .line 1124
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V

    .line 1125
    :cond_0
    return-void
.end method


# virtual methods
.method public addFindToolbarObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->addObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V

    .line 551
    :cond_0
    return-void
.end method

.method public back()Z
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 836
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->goBack()V

    .line 838
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V

    .line 839
    const/4 v0, 0x1

    .line 841
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 716
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 717
    return-void
.end method

.method public finishAnimations()V
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->finishAnimations()V

    .line 995
    :cond_0
    return-void
.end method

.method public forward()Z
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->goForward()V

    .line 849
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V

    .line 850
    const/4 v0, 0x1

    .line 852
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionModeController()Lorg/chromium/chrome/browser/toolbar/ActionModeController;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    return-object v0
.end method

.method public getBookmarkBridge()Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    return-object v0
.end method

.method public getMenuAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->shouldShowMenuButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getMenuButtonWrapper()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getMenuAnchor()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getToolbar()Lorg/chromium/chrome/browser/toolbar/Toolbar;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    return-object v0
.end method

.method public initializeWithNative(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 584
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mInitializedWithNative:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 585
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 587
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->updateVisualsForState()V

    .line 588
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setUrlToPageUrl()V

    .line 589
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p6}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setOnTabSwitcherClickHandler(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p7}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setOnNewTabClickHandler(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p8}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setBookmarkClickHandler(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p9}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setCustomTabCloseClickHandler(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p5}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setLayoutUpdateHost(Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;)V

    .line 595
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->initializeWithNative()V

    .line 597
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;

    invoke-direct {v1, p0, p4, p5}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 639
    iput-object p3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    .line 641
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 642
    :cond_1
    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mNativeLibraryReady:Z

    .line 647
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    .line 649
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->addObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V

    goto :goto_0

    .line 653
    :cond_2
    if-eqz p4, :cond_3

    .line 654
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mOverviewModeObserver:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    invoke-interface {p4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;->addOverviewModeObserver(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;)V

    .line 656
    :cond_3
    if-eqz p5, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mSceneChangeObserver:Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;

    invoke-virtual {p5, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->addSceneChangeObserver(Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;)V

    .line 658
    :cond_4
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->onNativeLibraryReady()V

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mInitializedWithNative:Z

    .line 660
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mInitializedWithNative:Z

    return v0
.end method

.method public onAccessibilityStatusChanged(Z)V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onAccessibilityStatusChanged(Z)V

    .line 732
    return-void
.end method

.method public onDeferredStartup(JLjava/lang/String;)V
    .locals 11

    .prologue
    const-wide/16 v6, 0x7530

    .line 969
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 970
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 971
    new-instance v2, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$16;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$16;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;JLjava/lang/String;)V

    sub-long v0, v6, v0

    invoke-static {v2, v0, v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MobileStartup.ToolbarFirstDrawTime."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getFirstDrawTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 981
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getFirstUrlBarFocusTime()J

    move-result-wide v2

    .line 982
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MobileStartup.ToolbarFirstFocusTime."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v9, 0x32

    invoke-static/range {v1 .. v9}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V

    .line 988
    :cond_1
    return-void
.end method

.method public onOrientationChange()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->showControlsOnOrientationChange()V

    .line 724
    return-void
.end method

.method public onUrlFocusChange(Z)V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onUrlFocusChange(Z)V

    .line 889
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->hideToolbar()V

    .line 891
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    if-nez v0, :cond_1

    .line 899
    :goto_0
    return-void

    .line 892
    :cond_1
    if-eqz p1, :cond_2

    .line 893
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFocusToken:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->showControlsPersistentAndClearOldToken(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFocusToken:I

    goto :goto_0

    .line 896
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFocusToken:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->hideControlsPersistent(I)V

    .line 897
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFocusToken:I

    goto :goto_0
.end method

.method public openHomepage()V
    .locals 4

    .prologue
    .line 871
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 872
    if-nez v1, :cond_0

    .line 879
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 874
    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getHomepageUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 875
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 876
    const-string/jumbo v0, "chrome-native://newtab/"

    .line 878
    :cond_1
    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/high16 v3, 0x4000000

    invoke-direct {v2, v0, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_0
.end method

.method public revertLocationBarChanges()V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->revertChanges()V

    .line 959
    return-void
.end method

.method public setCloseButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setCloseButtonImageResource(Landroid/graphics/drawable/Drawable;)V

    .line 927
    return-void
.end method

.method public setCustomActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setCustomActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 708
    return-void
.end method

.method public setMenuDelegatePhone(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$MenuDelegatePhone;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mMenuDelegatePhone:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$MenuDelegatePhone;

    .line 831
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setShowTitle(Z)V

    .line 935
    return-void
.end method

.method public setUrlBarFocus(Z)V
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setUrlBarFocus(Z)V

    goto :goto_0
.end method

.method public setUrlBarHidden(Z)V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setUrlBarHidden(Z)V

    .line 942
    return-void
.end method

.method public stopOrReloadCurrentTab()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->stopLoading()V

    .line 866
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V

    .line 867
    return-void

    .line 862
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->reload()V

    .line 863
    const-string/jumbo v0, "MobileToolbarReload"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePrimaryColor(I)V
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updatePrimaryColor(IZ)V

    .line 907
    return-void
.end method
