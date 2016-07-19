.class public Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;
.super Ljava/lang/Object;
.source "FindToolbarManager.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCallback:Landroid/view/ActionMode$Callback;

.field private mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private final mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Landroid/view/ActionMode$Callback;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mActivity:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 38
    iput-object p3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mCallback:Landroid/view/ActionMode$Callback;

    .line 39
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mObservers:Lorg/chromium/base/ObserverList;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;)Lorg/chromium/base/ObserverList;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mObservers:Lorg/chromium/base/ObserverList;

    return-object v0
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public hideToolbar()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->hideToolbar(Z)V

    .line 54
    return-void
.end method

.method public hideToolbar(Z)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate(Z)V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public showToolbar()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    if-nez v0, :cond_1

    .line 71
    sget v0, Lorg/chromium/chrome/R$id;->find_toolbar_stub:I

    .line 72
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget v0, Lorg/chromium/chrome/R$id;->find_toolbar_tablet_stub:I

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setActionModeCallbackForTextEdit(Landroid/view/ActionMode$Callback;)V

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager$1;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->activate()V

    .line 96
    return-void
.end method
