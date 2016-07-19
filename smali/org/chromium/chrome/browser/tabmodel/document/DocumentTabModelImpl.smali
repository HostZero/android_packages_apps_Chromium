.class public Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;
.source "DocumentTabModelImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final PREF_LAST_SHOWN_TAB_ID_INCOGNITO:Ljava/lang/String; = "last_shown_tab_id.incognito"

.field public static final PREF_LAST_SHOWN_TAB_ID_REGULAR:Ljava/lang/String; = "last_shown_tab_id.regular"

.field public static final PREF_PACKAGE:Ljava/lang/String; = "com.google.android.apps.chrome.document"

.field public static final STATE_CLEAN_UP_OBSOLETE_TABS:I = 0xb

.field public static final STATE_DESERIALIZE_END:I = 0x8

.field public static final STATE_DESERIALIZE_START:I = 0x7

.field public static final STATE_DETERMINE_HISTORICAL_TABS_END:I = 0xa

.field public static final STATE_DETERMINE_HISTORICAL_TABS_START:I = 0x9

.field public static final STATE_FULLY_LOADED:I = 0xc

.field public static final STATE_LOAD_CURRENT_TAB_STATE_END:I = 0x4

.field public static final STATE_LOAD_CURRENT_TAB_STATE_START:I = 0x3

.field public static final STATE_LOAD_TAB_STATE_BG_END:I = 0x6

.field public static final STATE_LOAD_TAB_STATE_BG_START:I = 0x5

.field public static final STATE_READ_RECENT_TASKS_END:I = 0x2

.field public static final STATE_READ_RECENT_TASKS_START:I = 0x1

.field public static final STATE_UNINITIALIZED:I


# instance fields
.field private final mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mEntryMap:Landroid/util/SparseArray;

.field private final mHistoricalTabs:Ljava/util/List;

.field private final mInitializationObservers:Lorg/chromium/base/ObserverList;

.field private mLastShownTabId:I

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private final mPrioritizedTabId:I

.field private mSharedPrefsLoadTime:J

.field private final mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

.field private final mTabCreatorManager:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;

.field private final mTabIdList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;ZILandroid/content/Context;)V
    .locals 6

    .prologue
    .line 161
    invoke-direct {p0, p4}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;-><init>(Z)V

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mLastShownTabId:I

    .line 162
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    .line 163
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    .line 164
    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabCreatorManager:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;

    .line 165
    iput p5, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mPrioritizedTabId:I

    .line 166
    iput-object p6, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mContext:Landroid/content/Context;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mCurrentState:I

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mHistoricalTabs:Ljava/util/List;

    .line 172
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mInitializationObservers:Lorg/chromium/base/ObserverList;

    .line 173
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 176
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v3

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getLastShownTabIdFromPrefs(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mLastShownTabId:I

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mSharedPrefsLoadTime:J

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mHistoricalTabs:Ljava/util/List;

    move v1, p4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->restoreTabEntries(ZLorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;Landroid/util/SparseArray;Ljava/util/List;Ljava/util/List;)V

    .line 183
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mPrioritizedTabId:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->deserializeTabStatesAsync()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->loadHistoricalTabsAsync()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mHistoricalTabs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->cleanUpObsoleteTabStatesAsync()V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    return-object v0
.end method

.method static synthetic access$900(Ljava/util/List;I)Z
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isTabIdInEntryList(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method private addTabId(II)V
    .locals 2

    .prologue
    .line 383
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private cleanUpObsoleteTabStatesAsync()V
    .locals 3

    .prologue
    .line 689
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 726
    return-void
.end method

.method private deserializeTabStatesAsync()V
    .locals 3

    .prologue
    .line 586
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mCurrentState:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->shouldStartDeserialization(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 588
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private indexOf(I)I
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static isTabIdInEntryList(Ljava/util/List;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 924
    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 925
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    iget v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    if-ne v0, p1, :cond_1

    const/4 v2, 0x1

    .line 927
    :cond_0
    return v2

    .line 924
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private loadHistoricalTabsAsync()V
    .locals 3

    .prologue
    .line 648
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 683
    return-void
.end method

.method private loadTabStatesAsync()V
    .locals 3

    .prologue
    .line 546
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 583
    return-void
.end method

.method private recordDocumentTabStateLoadTime(J)V
    .locals 3

    .prologue
    .line 510
    :try_start_0
    const-string/jumbo v0, "Android.StrictMode.DocumentTabStateLoad"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setCurrentState(I)V
    .locals 5

    .prologue
    .line 800
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 801
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mCurrentState:I

    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 802
    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mCurrentState:I

    .line 804
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mInitializationObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;

    .line 805
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 806
    const-string/jumbo v2, "DocumentTabModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Observer alerted after canceled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mInitializationObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2, v0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    goto :goto_0

    .line 808
    :cond_2
    iget v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mCurrentState:I

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->isSatisfied(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->runWhenReady()V

    .line 810
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mInitializationObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2, v0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    goto :goto_0

    .line 813
    :cond_3
    return-void
.end method

.method public static warmUpSharedPrefs(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 146
    const-string/jumbo v0, "com.google.android.apps.chrome.document"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 147
    return-void
.end method

.method private writeGeneralDataToStorageAsync()V
    .locals 3

    .prologue
    .line 732
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    :goto_0
    return-void

    .line 734
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private writeTabStatesToStorageAsync()V
    .locals 3

    .prologue
    .line 766
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 797
    return-void
.end method


# virtual methods
.method public addEntryForMigration(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;)V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    iget v1, p1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->addTabId(II)V

    .line 504
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    iget v1, p1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    iget v1, p1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addInitializationObserver(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;)V
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 426
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mInitializationObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 427
    return-void
.end method

.method public addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 916
    return-void
.end method

.method public addTab(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 857
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {p1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getParentId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->indexOf(I)I

    move-result v0

    .line 863
    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    .line 864
    :goto_1
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getLaunchType()Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    .line 865
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->updateEntry(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 863
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 872
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 884
    :cond_0
    return-void

    .line 874
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, p1, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->willAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    goto :goto_0

    .line 876
    :cond_2
    if-ne p2, v2, :cond_3

    .line 877
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->addTabId(II)V

    .line 882
    :goto_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->tabAddedToModel(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 883
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, p1, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    goto :goto_2

    .line 879
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->addTabId(II)V

    goto :goto_1
.end method

.method public cancelTabClosure(I)V
    .locals 0

    .prologue
    .line 906
    return-void
.end method

.method public closeAllTabs()V
    .locals 2

    .prologue
    .line 823
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->closeAllTabs(ZZ)V

    .line 824
    return-void
.end method

.method public closeAllTabs(ZZ)V
    .locals 1

    .prologue
    .line 828
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->closeTabAt(I)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/chrome/browser/document/IncognitoNotificationManager;->dismissIncognitoNotification()V

    .line 830
    :cond_1
    return-void
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    move-result v0

    return v0
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->closeTabAt(I)Z

    move-result v0

    return v0
.end method

.method public closeTabAt(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 324
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 341
    :goto_0
    return v0

    .line 326
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 327
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_1

    .line 329
    :cond_2
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    .line 330
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 331
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isNativeInitialized()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->createHistoricalTab()V

    .line 336
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v3

    invoke-virtual {v0, v3, v1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->finishAndRemoveTask(ZI)V

    .line 337
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_2

    .line 341
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public commitAllTabClosures()V
    .locals 0

    .prologue
    .line 898
    return-void
.end method

.method public commitTabClosure(I)V
    .locals 0

    .prologue
    .line 902
    return-void
.end method

.method protected createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/content_public/browser/WebContents;I)Z
    .locals 6

    .prologue
    .line 367
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v0

    sget-object v3, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-interface {p3}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x66

    move-object v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->createTabWithWebContents(Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 850
    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->destroy()V

    .line 851
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mInitializationObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 852
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 853
    return-void
.end method

.method public getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;
    .locals 0

    .prologue
    .line 910
    return-object p0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentInitializationStage()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mCurrentState:I

    return v0
.end method

.method public getCurrentUrlForDocument(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 397
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->currentUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInitialUrlForDocument(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 391
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->initialUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextTabIfClosed(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStorageDelegate()Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    return-object v0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 271
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 310
    :goto_0
    return-object v0

    .line 274
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 275
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 277
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 278
    instance-of v2, v0, Lorg/chromium/chrome/browser/document/DocumentActivity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v6

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->isValidActivity(ZLandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    check-cast v0, Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 284
    if-nez v0, :cond_3

    move v2, v3

    .line 285
    :goto_1
    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 284
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    goto :goto_1

    .line 289
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 290
    sget-boolean v2, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 293
    :cond_5
    iget-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 294
    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0

    .line 298
    :cond_6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isNativeInitialized()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    .line 300
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v5

    iget v6, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-virtual {v2, v5, v6, v3}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->createFrozenTab(Lorg/chromium/chrome/browser/TabState;II)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 302
    iget-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->initializeNative()V

    .line 306
    :cond_8
    iget-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v2, :cond_9

    .line 307
    new-instance v2, Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v3

    invoke-direct {v2, v4, v3, v1}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(IZLorg/chromium/ui/base/WindowAndroid;)V

    iput-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 310
    :cond_9
    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    goto/16 :goto_0
.end method

.method protected bridge synthetic getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v0

    return-object v0
.end method

.method protected getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabCreatorManager:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    return-object v0
.end method

.method public getTabStateForDocument(I)Lorg/chromium/chrome/browser/TabState;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 409
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    goto :goto_0
.end method

.method public hasEntryForTabId(I)Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public index()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 212
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mLastShownTabId:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->indexOf(I)I

    move-result v0

    .line 214
    if-ne v0, v2, :cond_0

    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTasksFromRecents(Z)Ljava/util/List;

    move-result-object v3

    .line 218
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 220
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 221
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    iget v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    .line 222
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->indexOf(I)I

    move-result v0

    .line 223
    if-ne v0, v2, :cond_0

    .line 220
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 226
    goto :goto_0
.end method

.method public indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .prologue
    .line 255
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->indexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method public initializeNative()V
    .locals 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isNativeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->initializeNative()V

    .line 189
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->deserializeTabStatesAsync()V

    .line 191
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string/jumbo v0, "Android.StrictMode.DocumentModeSharedPrefs"

    iget-wide v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mSharedPrefsLoadTime:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 195
    :cond_1
    return-void
.end method

.method public isClosurePending(I)Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public isRetargetable(I)Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 420
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->canGoBack:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSessionRestoreInProgress()Z
    .locals 2

    .prologue
    .line 374
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mCurrentState:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabStateReady(I)Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 403
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->isTabStateReady:Z

    goto :goto_0
.end method

.method public moveTab(II)V
    .locals 5

    .prologue
    .line 834
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(III)I

    move-result v1

    .line 835
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v2

    .line 836
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    if-eq v2, v1, :cond_0

    add-int/lit8 v0, v2, 0x1

    if-ne v0, v1, :cond_1

    .line 846
    :cond_0
    return-void

    .line 840
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 841
    invoke-direct {p0, v1, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->addTabId(II)V

    .line 843
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 844
    if-eqz v3, :cond_0

    .line 845
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v3, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V

    goto :goto_0
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 921
    return-void
.end method

.method public removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 888
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 889
    :cond_0
    return-void
.end method

.method public setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
    .locals 3

    .prologue
    .line 315
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mTabIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 317
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->moveTaskToFront(ZI)V

    .line 318
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setLastShownId(I)Z

    goto :goto_0
.end method

.method public setLastShownId(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 231
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mLastShownTabId:I

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 250
    :goto_0
    return v0

    .line 233
    :cond_0
    iget v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mLastShownTabId:I

    .line 234
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mLastShownTabId:I

    .line 236
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "last_shown_tab_id.incognito"

    .line 238
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.google.android.apps.chrome.document"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 240
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 246
    invoke-static {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    sget-object v4, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    invoke-interface {v0, v3, v4, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V

    goto :goto_2

    .line 236
    :cond_1
    const-string/jumbo v0, "last_shown_tab_id.regular"

    goto :goto_1

    .line 250
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldStartDeserialization(I)Z
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTabStateLoad()V
    .locals 7

    .prologue
    .line 522
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 543
    :goto_0
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V

    .line 525
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mPrioritizedTabId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 526
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mPrioritizedTabId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 527
    if-eqz v0, :cond_1

    .line 529
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 531
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 532
    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    iget v5, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mPrioritizedTabId:I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->restoreTabState(IZ)Lorg/chromium/chrome/browser/TabState;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->setTabState(Lorg/chromium/chrome/browser/TabState;)V

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->recordDocumentTabStateLoadTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 538
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->isTabStateReady:Z

    .line 541
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V

    .line 542
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->loadTabStatesAsync()V

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public supportsPendingClosures()Z
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method public updateEntry(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 6

    .prologue
    .line 451
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->isValidActivity(ZLandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 453
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 454
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 456
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 457
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->canGoBack()Z

    move-result v3

    .line 459
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v4

    .line 460
    if-eqz v0, :cond_3

    iget v5, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    if-ne v5, v1, :cond_3

    iget-object v5, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->currentUrl:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->canGoBack:Z

    if-ne v5, v3, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v5

    if-ne v5, v4, :cond_3

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->isTabStateDirty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 469
    :cond_3
    if-nez v0, :cond_4

    .line 470
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    invoke-static {p1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getInitialUrlForDocument(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;-><init>(ILjava/lang/String;)V

    .line 471
    iget-object v5, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->isDirty:Z

    .line 474
    iput-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->currentUrl:Ljava/lang/String;

    .line 475
    iput-boolean v3, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->canGoBack:Z

    .line 476
    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->setTabState(Lorg/chromium/chrome/browser/TabState;)V

    .line 480
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setIsTabStateDirty(Z)V

    .line 482
    iget-object v1, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v1, :cond_6

    .line 483
    iget-object v1, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->destroy()V

    .line 484
    :cond_5
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 487
    :cond_6
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->writeGeneralDataToStorageAsync()V

    .line 488
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->writeTabStatesToStorageAsync()V

    goto :goto_0
.end method

.method protected updateEntryInfoFromTabState(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;Lorg/chromium/chrome/browser/TabState;)V
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/TabState;->getVirtualUrlFromState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->currentUrl:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public updateRecentlyClosed()V
    .locals 6

    .prologue
    .line 431
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 432
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTasksFromRecents(Z)Ljava/util/List;

    move-result-object v1

    .line 433
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 434
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 435
    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 436
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isTabIdInEntryList(Ljava/util/List;I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v5

    invoke-virtual {v4, v5, v3}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->isTabAssociatedWithNonDestroyedActivity(ZI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 441
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->closeTabAt(I)Z

    goto :goto_1

    .line 447
    :cond_2
    return-void
.end method
