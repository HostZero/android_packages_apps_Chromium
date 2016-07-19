.class public Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;
.source "TabModelSelectorImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CUSTOM_TABS_SELECTOR_INDEX:I = -0x1


# instance fields
.field private mActiveState:Z

.field private final mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private mCloseAllTabsDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector$CloseAllTabsDelegate;

.field private mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

.field private mIsUndoSupported:Z

.field private final mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

.field private mOverviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

.field private mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

.field private final mSessionRestoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field private final mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

.field private final mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

.field private mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;ILorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;ILorg/chromium/ui/base/WindowAndroid;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;ILorg/chromium/ui/base/WindowAndroid;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mSessionRestoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-boolean v6, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActiveState:Z

    .line 78
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 79
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    .line 80
    new-instance v5, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$1;

    invoke-direct {v5, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$1;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)V

    .line 101
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mIsUndoSupported:Z

    .line 102
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;ILandroid/content/Context;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    .line 104
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    .line 105
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    move-object v2, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    .line 107
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    move-object v2, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->setTabCreators(Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->handleOnPageLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    return-object v0
.end method

.method private cacheTabBitmap(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->cacheTabThumbnail(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method

.method private handleOnPageLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->addTabToSaveQueue(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public clearEncryptedState()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->clearEncryptedState()V

    .line 317
    return-void
.end method

.method public clearState()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->clearState()V

    .line 313
    return-void
.end method

.method public closeAllTabsRequest(Z)Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mCloseAllTabsDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector$CloseAllTabsDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector$CloseAllTabsDelegate;->closeAllTabsRequest(Z)Z

    move-result v0

    return v0
.end method

.method public commitAllTabClosures()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 261
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->commitAllTabClosures()V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->destroy()V

    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->destroy()V

    .line 323
    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->destroy()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActiveState:Z

    .line 325
    return-void
.end method

.method public getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActiveState:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;->getInstance()Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    move-result-object v0

    goto :goto_0
.end method

.method public getRestoredTabCount()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getRestoredTabCount()I

    move-result v0

    return v0
.end method

.method public isInOverviewMode()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mOverviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mOverviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;->overviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionRestoreInProgress()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mSessionRestoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loadState()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->loadState()V

    .line 281
    return-void
.end method

.method protected markTabStateInitialized()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->markTabStateInitialized()V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mSessionRestoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    .line 121
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->broadcastSessionRestoreComplete()V

    goto :goto_0

    .line 124
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Normal tab model is null after tab state loaded."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public notifyChanged()V
    .locals 0

    .prologue
    .line 408
    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->notifyChanged()V

    .line 409
    return-void
.end method

.method public onNativeLibraryReady(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 155
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActiveState:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "onNativeLibraryReady called twice!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 158
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    iget-object v5, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    iget-object v6, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    iget-object v7, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    iget-boolean v9, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mIsUndoSupported:Z

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;-><init>(ZLorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;Z)V

    .line 160
    new-instance v10, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;

    new-instance v2, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    iget-object v5, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    iget-object v6, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    iget-object v7, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    iget-object v8, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;)V

    invoke-direct {v10, v2}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;-><init>(Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;)V

    .line 163
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->isIncognitoSelected()Z

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/chromium/chrome/browser/tabmodel/TabModel;

    aput-object v0, v3, v1

    aput-object v10, v3, v11

    invoke-virtual {p0, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->initialize(Z[Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    .line 164
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v0, v10, v1}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->setTabContentManager(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 169
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$2;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 179
    iput-boolean v11, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActiveState:Z

    .line 181
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;

    invoke-direct {v0, p0, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 223
    return-void
.end method

.method public onTabsViewShown()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->onTabsViewShown()V

    .line 147
    return-void
.end method

.method public openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public requestToShowTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getLaunchType()Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    .line 345
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eq v1, p1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-static {p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->startTabSwitchLatencyTiming(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V

    .line 348
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eq v1, p1, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->needsReload()Z

    move-result v1

    if-nez v1, :cond_4

    .line 349
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_NEW:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    if-eq p2, v0, :cond_2

    .line 355
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->cacheTabBitmap(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 357
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->hide()V

    .line 358
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->setFullscreenManager(Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;)V

    .line 359
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->addTabToSaveQueue(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 361
    :cond_3
    iput-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 364
    :cond_4
    if-nez p1, :cond_7

    .line 365
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->notifyChanged()V

    .line 387
    :cond_5
    :goto_1
    return-void

    .line 342
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 371
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-ne v0, p1, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v0

    if-nez v0, :cond_8

    .line 373
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->loadIfNeeded()Z

    goto :goto_1

    .line 377
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->setFullscreenManager(Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;)V

    .line 378
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mVisibleTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 383
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_EXIT:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    if-eq p2, v0, :cond_5

    .line 384
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/tab/Tab;->show(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V

    .line 385
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isBeingRestored()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->onShowTab(IZ)V

    goto :goto_1
.end method

.method public restoreTabs(Z)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTabs(Z)V

    .line 291
    return-void
.end method

.method public saveState()V
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->commitAllTabClosures()V

    .line 272
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveState()V

    .line 273
    return-void
.end method

.method public selectModel(Z)V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 238
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->selectModel(Z)V

    .line 239
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    .line 240
    if-eq v0, v1, :cond_0

    .line 241
    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$4;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    :cond_0
    return-void
.end method

.method public setCloseAllTabsDelegate(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector$CloseAllTabsDelegate;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mCloseAllTabsDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector$CloseAllTabsDelegate;

    .line 228
    return-void
.end method

.method public setOverviewModeBehavior(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;)V
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mOverviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

    .line 140
    return-void
.end method

.method public tryToRestoreTabStateForId(I)V
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->isSessionRestoreInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTabStateForId(I)V

    .line 309
    :cond_0
    return-void
.end method

.method public tryToRestoreTabStateForUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->isSessionRestoreInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTabStateForUrl(Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void
.end method
