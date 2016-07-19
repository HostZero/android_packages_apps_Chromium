.class public Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;
.source "TabModelImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final UNKNOWN_APP_ID:Ljava/lang/String; = "com.google.android.apps.chrome.unknown_app"


# instance fields
.field private final mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

.field private mIndex:I

.field private mIsUndoSupported:Z

.field private final mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private final mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

.field private final mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

.field private final mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

.field private final mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field private final mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

.field private final mTabs:Ljava/util/List;

.field private final mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZLorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;Z)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;-><init>(Z)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    .line 57
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIsUndoSupported:Z

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->initializeNative()V

    .line 75
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    .line 76
    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    .line 77
    iput-object p4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    .line 78
    iput-object p5, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    .line 79
    iput-object p6, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 80
    iput-object p7, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    .line 81
    iput-object p8, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    .line 82
    iput-boolean p9, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIsUndoSupported:Z

    .line 83
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    .line 84
    return-void
.end method

.method private closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    if-nez p1, :cond_0

    .line 348
    sget-boolean v1, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Tab is null!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 352
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    sget-boolean v1, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Tried to close a tab from another model!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 357
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->supportsPendingClosures()Z

    move-result v0

    and-int v1, p4, v0

    .line 359
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->startTabClosure(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)V

    .line 360
    if-eqz p5, :cond_2

    if-eqz v1, :cond_2

    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 363
    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->finalizeTabClosure(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 365
    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private finalizeTabClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->removeTabThumbnail(I)V

    .line 568
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->removeTabFromQueues(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 570
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->createHistoricalTab()V

    .line 572
    :cond_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->destroy()V

    .line 573
    return-void
.end method

.method private findTabInAllTabModels(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getLastId(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 452
    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_CLOSE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    if-ne p1, v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 456
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    goto :goto_0
.end method

.method private hasValidTab()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 461
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 461
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private isCurrentModel()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTabClosure(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)V
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 517
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    .line 518
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v4

    .line 520
    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setClosing(Z)V

    .line 522
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    .line 525
    if-nez v4, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 526
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getNextTabIfClosed(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v6

    .line 529
    if-nez p4, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->commitAllTabClosures()V

    .line 532
    :cond_1
    if-eqz p4, :cond_2

    .line 533
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_2

    .line 535
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->suspendAllMediaPlayers()V

    .line 536
    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->setAudioMuted(Z)V

    .line 540
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 542
    if-nez v6, :cond_6

    const/4 v0, 0x0

    move v3, v0

    .line 543
    :goto_2
    if-nez v6, :cond_7

    move v0, v2

    .line 544
    :goto_3
    if-nez v6, :cond_8

    move v1, v2

    .line 547
    :goto_4
    if-eq v6, v5, :cond_a

    .line 548
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v0

    if-eq v3, v0, :cond_3

    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    .line 550
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-interface {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    .line 551
    if-eqz p3, :cond_9

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_EXIT:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    :goto_5
    invoke-interface {v2, v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V

    .line 557
    :goto_6
    if-nez p4, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->resetRewoundState()V

    .line 558
    :cond_4
    return-void

    .line 525
    :cond_5
    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    .line 542
    :cond_6
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    move v3, v0

    goto :goto_2

    .line 543
    :cond_7
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    goto :goto_3

    .line 544
    :cond_8
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-interface {v1, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v0

    move v1, v0

    goto :goto_4

    .line 551
    :cond_9
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_CLOSE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    goto :goto_5

    .line 554
    :cond_a
    iput v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    goto :goto_6
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 4

    .prologue
    .line 122
    :try_start_0
    const-string/jumbo v0, "TabModelImpl.addTab"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, p1, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->willAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "TabModelImpl.addTab"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->willOpenInForeground(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Z)Z

    move-result v1

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    invoke-virtual {v0, p3, p2, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->determineInsertionIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ILorg/chromium/chrome/browser/tab/Tab;)I

    move-result v0

    .line 129
    sget-boolean v2, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 131
    :cond_1
    sget-boolean v2, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v3

    if-eq v2, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->commitAllTabClosures()V

    .line 136
    if-ltz v0, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_6

    .line 137
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isCurrentModel()Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    .line 152
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->resetRewoundState()V

    .line 154
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v2

    .line 155
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->tabAddedToModel(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, p1, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    goto :goto_2

    .line 139
    :cond_6
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 140
    iget v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    if-gt v0, v2, :cond_4

    .line 141
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    goto :goto_1

    .line 159
    :cond_7
    if-eqz v1, :cond_8

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->selectModel(Z)V

    .line 161
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_NEW:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    invoke-virtual {p0, v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_8
    const-string/jumbo v0, "TabModelImpl.addTab"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public cancelTabClosure(I)V
    .locals 9

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->getPendingRewindTab(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 261
    if-nez v4, :cond_1

    .line 305
    :cond_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {v4, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setClosing(Z)V

    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v5

    move v2, v1

    move v0, v3

    .line 274
    :goto_0
    if-ge v2, v5, :cond_3

    .line 275
    iget-object v6, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v6, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v6

    .line 276
    iget-object v7, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v0, v7, :cond_3

    .line 277
    iget-object v7, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    add-int/lit8 v8, v0, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 274
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .line 283
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    if-lt v0, v2, :cond_4

    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    .line 284
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 286
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->setAudioMuted(Z)V

    .line 289
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x1

    .line 291
    :goto_1
    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    if-ne v1, v3, :cond_6

    .line 294
    if-eqz v0, :cond_8

    .line 295
    invoke-static {p0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 302
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveTabListAsynchronously()V

    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_3

    :cond_7
    move v0, v1

    .line 289
    goto :goto_1

    .line 297
    :cond_8
    iput v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    goto :goto_2
.end method

.method public closeAllTabs()V
    .locals 2

    .prologue
    .line 370
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->closeAllTabs(ZZ)V

    .line 371
    return-void
.end method

.method public closeAllTabs(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->cancelLoadingTabs(Z)V

    .line 377
    if-eqz p2, :cond_1

    .line 378
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->commitAllTabClosures()V

    move v0, v1

    .line 380
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/tab/Tab;->setClosing(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->closeTabByIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Z

    goto :goto_1

    .line 385
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->closeAllTabsRequest(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    :cond_2
    :goto_2
    return-void

    .line 387
    :cond_3
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->isHomepageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 388
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->commitAllTabClosures()V

    move v0, v1

    .line 390
    :goto_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/tab/Tab;->setClosing(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 391
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->closeTabByIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Z

    goto :goto_4

    .line 395
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 396
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v1, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    goto :goto_2

    .line 400
    :cond_6
    invoke-virtual {p0, v3, v1, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->closeAllTabs(ZZZ)V

    goto :goto_2
.end method

.method public closeAllTabs(ZZZ)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 416
    move v0, v5

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/tab/Tab;->setClosing(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 419
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 420
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 422
    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZZ)Z

    goto :goto_1

    .line 425
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->supportsPendingClosures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v6}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->allTabsPendingClosure(Ljava/util/List;)V

    goto :goto_2

    .line 428
    :cond_2
    return-void
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    move-result v0

    return v0
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z
    .locals 6

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZZ)Z

    move-result v0

    return v0
.end method

.method protected closeTabAt(I)Z
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    return v0
.end method

.method public commitAllTabClosures()V
    .locals 2

    .prologue
    .line 321
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->getCount()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->getNextRewindableTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->commitTabClosure(I)V

    goto :goto_0

    .line 325
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->hasPendingClosures()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 327
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->supportsPendingClosures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->allTabsClosureCommitted()V

    goto :goto_1

    .line 330
    :cond_2
    return-void
.end method

.method public commitTabClosure(I)V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->getPendingRewindTab(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 310
    if-nez v1, :cond_1

    .line 317
    :cond_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 315
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->finalizeTabClosure(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->tabClosureCommitted(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method

.method protected createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/content_public/browser/WebContents;I)Z
    .locals 2

    .prologue
    .line 709
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {v0, p1, p3, p4, v1}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 95
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->destroy()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->destroy()V

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 102
    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->destroy()V

    .line 103
    return-void
.end method

.method public getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->supportsPendingClosures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNextTabIfClosed(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 213
    invoke-static {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 214
    if-nez v4, :cond_0

    .line 239
    :goto_0
    return-object v1

    .line 216
    :cond_0
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v0

    .line 217
    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 218
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getParentId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->findTabInAllTabModels(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 227
    if-eq v4, v1, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v1

    :cond_1
    :goto_2
    move-object v1, v0

    .line 239
    goto :goto_0

    .line 217
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 229
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->isInOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    .line 233
    goto :goto_2

    .line 234
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v3

    goto :goto_2

    :cond_6
    move-object v0, v3

    goto :goto_2
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 433
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 434
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0
.end method

.method protected getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 703
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    goto :goto_0
.end method

.method public index()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    return v0
.end method

.method public indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isClosurePending(I)Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->getPendingRewindTab(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSessionRestoreInProgress()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->isSessionRestoreInProgress()Z

    move-result v0

    return v0
.end method

.method public moveTab(II)V
    .locals 5

    .prologue
    .line 170
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(III)I

    move-result v1

    .line 172
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v3

    .line 174
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    if-eq v3, v1, :cond_0

    add-int/lit8 v0, v3, 0x1

    if-ne v0, v1, :cond_1

    .line 197
    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->commitAllTabClosures()V

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 182
    if-ge v3, v1, :cond_5

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    .line 184
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 186
    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    if-ne v3, v1, :cond_3

    .line 187
    iput v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    .line 194
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mRewoundList:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->resetRewoundState()V

    .line 196
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v1}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v1, v0, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V

    goto :goto_2

    .line 188
    :cond_3
    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    if-ge v3, v1, :cond_4

    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    if-lt v2, v1, :cond_4

    .line 189
    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    goto :goto_1

    .line 190
    :cond_4
    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    if-le v3, v1, :cond_2

    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    if-gt v2, v1, :cond_2

    .line 191
    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_0
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 471
    :try_start_0
    const-string/jumbo v0, "TabModelImpl.setIndex"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getLastId(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)I

    move-result v2

    .line 474
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isCurrentModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v3

    invoke-interface {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->selectModel(Z)V

    .line 478
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->hasValidTab()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    .line 484
    :goto_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 486
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    invoke-interface {v0, v3, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;->requestToShowTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V

    .line 488
    if-eqz v3, :cond_3

    .line 489
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v3, p2, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 499
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "TabModelImpl.setIndex"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mTabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v0, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIndex:I

    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    .line 492
    :goto_2
    if-nez v0, :cond_3

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->userSwitchedToTab()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :cond_3
    const-string/jumbo v0, "TabModelImpl.setIndex"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 500
    return-void

    :cond_4
    move v0, v1

    .line 491
    goto :goto_2
.end method

.method public supportsPendingClosures()Z
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->mIsUndoSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
