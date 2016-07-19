.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;
.super Ljava/lang/Object;
.source "BookmarkManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field private final mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

.field private mContentView:Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;

.field private mDrawer:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerListView:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

.field private mInitialUrl:Ljava/lang/String;

.field private mIsDialogUi:Z

.field private mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

.field private mMainView:Landroid/view/ViewGroup;

.field private final mModelLoadedRunnable:Ljava/lang/Runnable;

.field private mSearchView:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

.field private mSelectedBookmarks:Ljava/util/Set;

.field private final mStateStack:Ljava/util/Stack;

.field private final mUIObservers:Lorg/chromium/base/ObserverList;

.field private mUndoController:Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;

.field private mUrlChangeListener:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate$BookmarkStateChangeListener;

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUIObservers:Lorg/chromium/base/ObserverList;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    .line 61
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 97
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mModelLoadedRunnable:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mActivity:Landroid/app/Activity;

    .line 118
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mIsDialogUi:Z

    .line 120
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->bookmark_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mMainView:Landroid/view/ViewGroup;

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mMainView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_drawer_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mMainView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_drawer_list:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawerListView:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mMainView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_content_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mContentView:Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mMainView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_view_switcher:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 127
    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-object v0, p1

    check-cast v0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarManageable;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarManageable;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUndoController:Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;

    .line 129
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->bookmark_search_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSearchView:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 131
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->initializeToLoadingState()V

    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mModelLoadedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->runAfterBookmarkModelLoaded(Ljava/lang/Runnable;)Z

    .line 137
    invoke-static {p1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksShim;->kickOffReading(Landroid/content/Context;)V

    .line 139
    new-instance v0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/profiles/Profile;->getOriginalProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    .line 140
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 142
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0xa

    const/high16 v1, 0xa00000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 144
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->createCache(I)V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSearchView:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawerListView:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mContentView:Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mInitialUrl:Ljava/lang/String;

    return-object v0
.end method

.method private initializeToLoadingState()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mContentView:Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->showLoadingUi()V

    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawerListView:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->showLoadingUi()V

    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mContentView:Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->showLoadingUi()V

    .line 238
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 239
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createLoadingState()Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V

    .line 240
    return-void
.end method

.method private setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->isValid(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createAllBookmarksState(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object p1

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    :cond_1
    return-void

    .line 264
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    iget v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    if-ne v0, v1, :cond_3

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 268
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget v0, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    if-eq v0, v1, :cond_5

    .line 272
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mShouldPersist:Z

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->setLastUsedUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUrlChangeListener:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate$BookmarkStateChangeListener;

    if-eqz v0, :cond_5

    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUrlChangeListener:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate$BookmarkStateChangeListener;

    iget-object v1, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate$BookmarkStateChangeListener;->onBookmarkUIStateChange(Ljava/lang/String;)V

    .line 281
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->clearSelection()V

    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUIObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;

    .line 284
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->notifyStateChange(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public addUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUIObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method public clearSelection()V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 315
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUIObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;->onSelectionStateChange(Ljava/util/List;)V

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public closeDrawer()V
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->doesDrawerExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)V

    goto :goto_0
.end method

.method public closeSearchUI()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSearchView:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUIObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;

    .line 152
    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;->onDestroy()V

    goto :goto_0

    .line 154
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUIObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUndoController:Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUndoController:Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->destroy()V

    .line 158
    iput-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUndoController:Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;

    .line 160
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 162
    iput-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->destroy()V

    .line 164
    iput-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    .line 165
    return-void
.end method

.method public doesDrawerExist()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    iget v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    goto :goto_0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public getLargeIconBridge()Lorg/chromium/chrome/browser/favicon/LargeIconBridge;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    return-object v0
.end method

.method public getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    return-object v0
.end method

.method public getSelectedBookmarks()Ljava/util/List;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarManageable;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarManageable;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mMainView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isBookmarkSelected(Lorg/chromium/components/bookmarks/BookmarkId;)Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDialogUi()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mIsDialogUi:Z

    return v0
.end method

.method public isSelectionEnabled()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyStateChange(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->getCurrentState()I

    move-result v0

    .line 351
    packed-switch v0, :pswitch_data_0

    .line 367
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "State not valid"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 353
    :pswitch_0
    invoke-interface {p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;->onAllBookmarksStateSet()V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 356
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFolder:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;->onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V

    goto :goto_0

    .line 361
    :pswitch_2
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUIObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 364
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;->onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const v2, 0x800003

    const/4 v1, 0x1

    .line 172
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->doesDrawerExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->c(I)V

    move v0, v1

    .line 188
    :goto_0
    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mContentView:Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V

    move v0, v1

    .line 185
    goto :goto_0

    .line 188
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openAllBookmarks()V
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->closeSearchUI()V

    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createAllBookmarksState(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V

    .line 305
    return-void
.end method

.method public openBookmark(Lorg/chromium/components/bookmarks/BookmarkId;I)V
    .locals 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->clearSelection()V

    .line 392
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->openBookmark(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->finishActivityOnPhone(Landroid/content/Context;)V

    .line 396
    :cond_0
    return-void
.end method

.method public openFilter(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createFilterState(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V

    .line 310
    return-void
.end method

.method public openFolder(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->closeSearchUI()V

    .line 298
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createFolderState(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V

    .line 299
    return-void
.end method

.method public openSearchUI()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 402
    return-void
.end method

.method public removeUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUIObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method public setUrlChangeListener(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate$BookmarkStateChangeListener;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUrlChangeListener:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate$BookmarkStateChangeListener;

    .line 200
    return-void
.end method

.method public toggleSelectionForBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)Z
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 326
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mUIObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;->onSelectionStateChange(Ljava/util/List;)V

    goto :goto_2

    .line 325
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSelectedBookmarks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 330
    :cond_2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->isBookmarkSelected(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateForUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->isBookmarkModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createStateFromUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V

    goto :goto_0

    .line 226
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mInitialUrl:Ljava/lang/String;

    goto :goto_0
.end method
