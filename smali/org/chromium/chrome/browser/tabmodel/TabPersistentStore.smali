.class public Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;
.super Lorg/chromium/chrome/browser/tabmodel/TabPersister;
.source "TabPersistentStore.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIGRATION_LOCK:Ljava/lang/Object;

.field public static final SAVED_STATE_FILE:Ljava/lang/String; = "tab_state"

.field private static final SAVE_LIST_LOCK:Ljava/lang/Object;

.field private static sBaseStateDirectory:Ljava/io/File;

.field private static sMigrationTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;


# instance fields
.field private mCancelIncognitoTabLoads:Z

.field private mCancelNormalTabLoads:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mIncognitoTabsRestored:Landroid/util/SparseIntArray;

.field private mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

.field private mNormalTabsRestored:Landroid/util/SparseIntArray;

.field private final mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

.field private mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

.field private final mSelectorIndex:I

.field private mStateDirectory:Ljava/io/File;

.field private mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field private final mTabCreatorManager:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;

.field private final mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private final mTabsToRestore:Ljava/util/Deque;

.field private final mTabsToSave:Ljava/util/Deque;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->$assertionsDisabled:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->MIGRATION_LOCK:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->SAVE_LIST_LOCK:Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->sMigrationTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;ILandroid/content/Context;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersister;-><init>()V

    .line 157
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelNormalTabLoads:Z

    .line 158
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelIncognitoTabLoads:Z

    .line 180
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 181
    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mContext:Landroid/content/Context;

    .line 182
    iput-object p4, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabCreatorManager:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;

    .line 183
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    .line 184
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    .line 185
    iput p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSelectorIndex:I

    .line 186
    iput-object p5, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mPreferences:Landroid/content/SharedPreferences;

    .line 188
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->createMigrationTask()V

    .line 189
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Ljava/util/Deque;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;)Z
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->isIncognitoTabBeingRestored(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelIncognitoTabLoads:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelNormalTabLoads:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTab(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->loadNextTab()V

    return-void
.end method

.method static synthetic access$1500(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$502(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    return-object p1
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveNextTab()V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)[B
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->serializeTabMetadata()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;[B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveListToFile([B)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    return-object v0
.end method

.method static synthetic access$902(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    return-object p1
.end method

.method private checkAndUpdateMaxTabId()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 771
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.HAS_COMPUTED_MAX_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 778
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getBaseStateDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 779
    if-nez v3, :cond_1

    .line 785
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 780
    :cond_1
    :try_start_1
    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 781
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 782
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->readSavedStateFile(Ljava/io/File;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$OnTabStateReadCallback;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 780
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 785
    :cond_3
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 787
    invoke-static {}, Lorg/chromium/chrome/browser/tab/TabIdManager;->getInstance()Lorg/chromium/chrome/browser/tab/TabIdManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tab/TabIdManager;->incrementIdCounterTo(I)V

    .line 788
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.HAS_COMPUTED_MAX_ID"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 785
    :catchall_0
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method private cleanupAllEncryptedPersistentData()V
    .locals 5

    .prologue
    .line 992
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 994
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 995
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 996
    const-string/jumbo v0, "CleanupAllEncryptedTime"

    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->logExecutionTime(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1000
    if-eqz v4, :cond_1

    .line 1001
    array-length v1, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, v4, v0

    .line 1002
    const-string/jumbo v3, "cryptonito"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1003
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->deleteFileAsync(Ljava/lang/String;)V

    .line 1001
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 1007
    :cond_1
    return-void
.end method

.method private cleanupPersistentData()V
    .locals 7

    .prologue
    .line 955
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 956
    if-eqz v2, :cond_1

    .line 957
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 958
    invoke-static {v4}, Lorg/chromium/chrome/browser/TabState;->parseInfoFromFilename(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 959
    if-eqz v5, :cond_0

    .line 960
    iget-object v6, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v6, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v6

    .line 961
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 962
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->deleteFileAsync(Ljava/lang/String;)V

    .line 957
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 968
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v0, :cond_2

    .line 969
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->cleanupPersistentData(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 971
    :cond_2
    return-void
.end method

.method private cleanupPersistentData(IZ)V
    .locals 1

    .prologue
    .line 601
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/TabState;->getTabStateFilename(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->deleteFileAsync(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method private final createMigrationTask()V
    .locals 4

    .prologue
    .line 192
    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->MIGRATION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->sMigrationTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;)V

    .line 195
    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->sMigrationTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createOnTabStateReadCallback(Z)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$OnTabStateReadCallback;
    .locals 1

    .prologue
    .line 737
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Z)V

    return-object v0
.end method

.method private deleteFileAsync(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1010
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$2;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1021
    return-void
.end method

.method private static getBaseStateDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->sBaseStateDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 223
    const-string/jumbo v0, "tabs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->setBaseStateDirectory(Ljava/io/File;)V

    .line 225
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->sBaseStateDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static getStateDirectory(Landroid/content/Context;I)Ljava/io/File;
    .locals 4

    .prologue
    .line 235
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getBaseStateDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tabmodel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to create state folder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_0
    return-object v0
.end method

.method private getTabToRestoreById(I)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;
    .locals 3

    .prologue
    .line 583
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    .line 584
    iget v2, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    if-ne v2, p1, :cond_0

    .line 588
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabToRestoreByUrl(Ljava/lang/String;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    .line 575
    iget-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->url:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIncognitoTabBeingRestored(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;)Z
    .locals 1

    .prologue
    .line 1116
    if-eqz p1, :cond_0

    .line 1118
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/TabState;->isIncognito()Z

    move-result v0

    .line 1124
    :goto_0
    return v0

    .line 1119
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->isIncognito:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1121
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->isIncognito:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 1124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTabUrlContentScheme(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 2

    .prologue
    .line 1102
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNextTab()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 937
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 952
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    iput-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    .line 941
    iput-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    .line 942
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->cleanupPersistentData()V

    .line 943
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->onStateLoaded()V

    .line 944
    iput-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Loaded tab lists; counts: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 948
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    .line 949
    new-instance v1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    .line 950
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static logExecutionTime(Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 266
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Android.StrictMode.TabPersistentStore."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 270
    :cond_0
    return-void
.end method

.method private static logSaveException(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 254
    const-string/jumbo v0, "tabmodel"

    const-string/jumbo v1, "Error while saving tabs state; will attempt to continue..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method private onStateLoaded()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;->onStateLoaded(Landroid/content/Context;)V

    .line 934
    :cond_0
    return-void
.end method

.method public static readSavedStateFile(Ljava/io/File;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$OnTabStateReadCallback;)I
    .locals 19

    .prologue
    .line 793
    const/4 v3, 0x0

    .line 798
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v13

    .line 800
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 801
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "tab_state"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 802
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-nez v4, :cond_0

    .line 841
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 842
    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    .line 804
    :cond_0
    :try_start_1
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 806
    const/4 v2, 0x0

    .line 807
    const/4 v4, 0x0

    .line 808
    const/4 v3, 0x0

    .line 809
    :try_start_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 810
    const/4 v6, 0x5

    if-eq v5, v6, :cond_e

    .line 812
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 841
    invoke-static {v9}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 842
    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 815
    :cond_1
    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    const/4 v3, 0x1

    .line 816
    :cond_2
    const/4 v6, 0x4

    if-ge v5, v6, :cond_e

    const/4 v4, 0x1

    move v12, v4

    .line 819
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 820
    if-eqz v3, :cond_4

    const/4 v3, -0x1

    move v11, v3

    .line 821
    :goto_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 822
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 823
    if-ltz v16, :cond_3

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    move/from16 v0, v18

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    .line 824
    :cond_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 841
    :catchall_0
    move-exception v2

    move-object v3, v9

    :goto_3
    invoke-static {v3}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 842
    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    .line 820
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v11, v3

    goto :goto_2

    .line 827
    :cond_5
    const/4 v3, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v3, v0, :cond_c

    .line 828
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 829
    if-eqz v12, :cond_7

    const-string/jumbo v5, ""

    .line 830
    :goto_5
    if-lt v4, v2, :cond_d

    add-int/lit8 v2, v4, 0x1

    move v10, v2

    .line 832
    :goto_6
    if-gez v11, :cond_8

    const/4 v6, 0x0

    .line 833
    :goto_7
    if-eqz p1, :cond_6

    .line 834
    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    const/4 v7, 0x1

    :goto_8
    move/from16 v0, v17

    if-ne v3, v0, :cond_b

    const/4 v8, 0x1

    :goto_9
    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$OnTabStateReadCallback;->onDetailsRead(IILjava/lang/String;Ljava/lang/Boolean;ZZ)V

    .line 827
    :cond_6
    add-int/lit8 v3, v3, 0x1

    move v2, v10

    goto :goto_4

    .line 829
    :cond_7
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 832
    :cond_8
    if-ge v3, v11, :cond_9

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 834
    :cond_a
    const/4 v7, 0x0

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    goto :goto_9

    .line 838
    :cond_c
    const-string/jumbo v3, "ReadSavedStateTime"

    invoke-static {v3, v14, v15}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->logExecutionTime(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 841
    invoke-static {v9}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 842
    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_0

    .line 841
    :catchall_1
    move-exception v2

    goto :goto_3

    :cond_d
    move v10, v2

    goto :goto_6

    :cond_e
    move v12, v4

    goto/16 :goto_1
.end method

.method private restoreTab(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 460
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->isIncognitoTabBeingRestored(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;)Z

    move-result v3

    .line 461
    if-nez p2, :cond_1

    .line 462
    iget-object v0, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->isIncognito:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 463
    const-string/jumbo v0, "tabmodel"

    const-string/jumbo v1, "Failed to restore tab: not enough info about its type was available."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    :goto_0
    return-void

    .line 465
    :cond_0
    if-eqz v3, :cond_1

    .line 466
    const-string/jumbo v0, "tabmodel"

    const-string/jumbo v1, "Failed to restore Incognito tab: its TabState could not be restored."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v4

    .line 472
    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    .line 474
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget v1, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->originalIndex:I

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    if-le v1, v5, :cond_4

    .line 477
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 489
    :goto_2
    if-eqz p2, :cond_7

    .line 490
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabCreatorManager:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v2

    iget v3, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    invoke-virtual {v2, p2, v3, v1}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createFrozenTab(Lorg/chromium/chrome/browser/TabState;II)Lorg/chromium/chrome/browser/tab/Tab;

    .line 499
    :goto_3
    if-eqz p3, :cond_2

    .line 500
    iget v1, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    invoke-static {v4, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v1

    invoke-static {v4, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 502
    :cond_2
    iget v1, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->originalIndex:I

    iget v2, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 472
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    goto :goto_1

    :cond_4
    move v1, v2

    .line 480
    :goto_4
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 481
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget v6, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->originalIndex:I

    if-le v5, v6, :cond_6

    .line 482
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-static {v4, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_5

    invoke-interface {v4, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    goto :goto_2

    .line 480
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 493
    :cond_7
    const-string/jumbo v5, "tabmodel"

    const-string/jumbo v6, "Failed to restore TabState; creating Tab with last known URL."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabCreatorManager:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v2

    new-instance v3, Lorg/chromium/content_public/browser/LoadUrlParams;

    iget-object v5, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->url:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    sget-object v5, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-interface {v4, v2, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->moveTab(II)V

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method private restoreTab(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Z)V
    .locals 5

    .prologue
    .line 442
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 444
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 445
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory()Ljava/io/File;

    move-result-object v0

    iget v4, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/TabState;->restoreTabState(Ljava/io/File;I)Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    .line 446
    const-string/jumbo v4, "RestoreTabTime"

    invoke-static {v4, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->logExecutionTime(Ljava/lang/String;J)V

    .line 447
    invoke-direct {p0, p1, v0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTab(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 454
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 451
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadTabs exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method private restoreTabStateInternal(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    const/4 v0, 0x0

    .line 413
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    if-eqz v1, :cond_2

    .line 414
    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    iget-object v1, v1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    iget v1, v1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    if-eq v1, p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    iget-object v1, v1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    iget-object v1, v1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->cancel(Z)Z

    .line 418
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    .line 419
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->loadNextTab()V

    .line 423
    :cond_2
    if-nez v0, :cond_3

    .line 424
    if-nez p1, :cond_5

    .line 425
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getTabToRestoreById(I)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    move-result-object v0

    .line 431
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 432
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 433
    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTab(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Z)V

    .line 435
    :cond_4
    return-void

    .line 427
    :cond_5
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getTabToRestoreByUrl(Ljava/lang/String;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    move-result-object v0

    goto :goto_0
.end method

.method public static saveListToFile(Ljava/io/File;[B)V
    .locals 6

    .prologue
    .line 715
    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->SAVE_LIST_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v0, "tab_state"

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 719
    new-instance v3, Landroid/support/v4/g/c;

    invoke-direct {v3, v2}, Landroid/support/v4/g/c;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    const/4 v0, 0x0

    .line 722
    :try_start_1
    invoke-virtual {v3}, Landroid/support/v4/g/c;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 723
    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v0, p1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 724
    invoke-virtual {v3, v0}, Landroid/support/v4/g/c;->a(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 726
    :catch_0
    move-exception v4

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/support/v4/g/c;->b(Ljava/io/FileOutputStream;)V

    .line 727
    :cond_0
    const-string/jumbo v0, "tabmodel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to write file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private saveListToFile([B)V
    .locals 1

    .prologue
    .line 706
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveListToFile(Ljava/io/File;[B)V

    .line 707
    return-void
.end method

.method private saveNextTab()V
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    if-eqz v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 850
    new-instance v1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    .line 851
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveTabListAsynchronously()V

    goto :goto_0
.end method

.method public static serializeMetadata(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;Ljava/util/List;)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 658
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 660
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->ids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 661
    iget-object v0, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->ids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 664
    add-int v2, v4, v3

    .line 665
    if-nez p2, :cond_0

    move v0, v1

    .line 666
    :goto_0
    add-int/2addr v0, v2

    .line 669
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 670
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 671
    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 672
    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 673
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 674
    iget v0, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->index:I

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 675
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->index:I

    add-int/2addr v0, v4

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Serializing tab lists; counts: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v2, v1

    .line 682
    :goto_2
    if-ge v2, v4, :cond_2

    .line 683
    iget-object v0, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->ids:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 684
    iget-object v0, p1, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->urls:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 682
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 665
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 676
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 686
    :cond_2
    :goto_3
    if-ge v1, v3, :cond_3

    .line 687
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->ids:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 688
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->urls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 694
    :cond_3
    if-eqz p2, :cond_4

    .line 695
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    .line 696
    iget v2, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 697
    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->url:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4

    .line 701
    :cond_4
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 702
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private serializeTabMetadata()[B
    .locals 3

    .prologue
    .line 607
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 611
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    .line 613
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->serializeTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public static serializeTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Ljava/util/List;)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 631
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    .line 632
    new-instance v3, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    invoke-direct {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;-><init>(I)V

    move v0, v1

    .line 633
    :goto_0
    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 634
    iget-object v4, v3, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v4, v3, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->urls:Ljava/util/List;

    invoke-interface {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_0
    invoke-interface {p0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 639
    new-instance v2, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v4

    invoke-direct {v2, v4}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;-><init>(I)V

    .line 640
    :goto_1
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 641
    iget-object v4, v2, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->ids:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v4, v2, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->urls:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 645
    :cond_1
    invoke-static {v2, v3, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->serializeMetadata(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public static setBaseStateDirectory(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 214
    sput-object p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->sBaseStateDirectory:Ljava/io/File;

    .line 215
    return-void
.end method

.method public static waitForMigrationToFinish()V
    .locals 2

    .prologue
    .line 245
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->sMigrationTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The migration should be initialized by now."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 247
    :cond_0
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->sMigrationTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addTabToSaveQueue(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getDelegateFactory()Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;

    if-eqz v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isTabStateDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->isTabUrlContentScheme(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 551
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveNextTab()V

    goto :goto_0
.end method

.method public cancelLoadingTabs(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 536
    if-eqz p1, :cond_0

    .line 537
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelIncognitoTabLoads:Z

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelNormalTabLoads:Z

    goto :goto_0
.end method

.method public clearEncryptedState()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->cleanupAllEncryptedPersistentData()V

    .line 524
    return-void
.end method

.method public clearState()V
    .locals 1

    .prologue
    .line 513
    const-string/jumbo v0, "tab_state"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->deleteFileAsync(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->cleanupPersistentData()V

    .line 515
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->onStateLoaded()V

    .line 516
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 592
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mDestroyed:Z

    .line 593
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->cancel(Z)Z

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 595
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 596
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->cancel(Z)Z

    .line 597
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->cancel(Z)Z

    .line 598
    :cond_2
    return-void
.end method

.method public getRestoredTabCount()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method protected getStateDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mStateDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSelectorIndex:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mStateDirectory:Ljava/io/File;

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mStateDirectory:Ljava/io/File;

    return-object v0
.end method

.method public loadState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 349
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->waitForMigrationToFinish()V

    .line 350
    const-string/jumbo v2, "LoadStateTime"

    invoke-static {v2, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->logExecutionTime(Ljava/lang/String;J)V

    .line 352
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelNormalTabLoads:Z

    .line 353
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelIncognitoTabLoads:Z

    .line 354
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    .line 355
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    .line 357
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 358
    sget-boolean v2, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadState exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;->onInitialized(I)V

    .line 370
    :cond_0
    return-void

    .line 359
    :cond_1
    :try_start_1
    sget-boolean v2, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 360
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->checkAndUpdateMaxTabId()V

    .line 361
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v3

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->createOnTabStateReadCallback(Z)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$OnTabStateReadCallback;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->readSavedStateFile(Ljava/io/File;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$OnTabStateReadCallback;)I

    .line 363
    const-string/jumbo v2, "LoadStateInternalTime"

    invoke-static {v2, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->logExecutionTime(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public removeTabFromQueues(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 555
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getTabToRestoreById(I)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    iget v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->cancel(Z)Z

    .line 560
    iput-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mLoadTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;

    .line 561
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->loadNextTab()V

    .line 564
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    iget v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mId:I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 565
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->cancel(Z)Z

    .line 566
    iput-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    .line 567
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveNextTab()V

    .line 570
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->cleanupPersistentData(IZ)V

    .line 571
    return-void
.end method

.method public restoreTabStateForId(I)V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTabStateInternal(Ljava/lang/String;I)V

    .line 409
    return-void
.end method

.method public restoreTabStateForUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 400
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTabStateInternal(Ljava/lang/String;I)V

    .line 401
    return-void
.end method

.method public restoreTabs(Z)V
    .locals 2

    .prologue
    .line 381
    if-eqz p1, :cond_0

    .line 387
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    .line 389
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTab(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Z)V

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->loadNextTab()V

    .line 393
    return-void
.end method

.method public saveState()V
    .locals 9

    .prologue
    .line 274
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 276
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->serializeTabMetadata()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveListToFile([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v4, v0}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isTabStateDirty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->isTabUrlContentScheme(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 294
    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v4, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 296
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v4, v0}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isTabStateDirty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->isTabUrlContentScheme(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 300
    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v4, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mStateSaved:Z

    if-nez v0, :cond_3

    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 310
    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v4, v0}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isTabStateDirty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->isTabUrlContentScheme(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 313
    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v4, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 317
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    .line 321
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 322
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v5

    .line 323
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 325
    :try_start_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_5

    .line 327
    invoke-virtual {p0, v5, v6}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->openTabStateOutputStream(IZ)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-static {v7, v0, v6}, Lorg/chromium/chrome/browser/TabState;->saveState(Ljava/io/FileOutputStream;Lorg/chromium/chrome/browser/TabState;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    :try_start_4
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->logSaveException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 340
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 283
    :catch_1
    move-exception v0

    .line 284
    :try_start_5
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->logSaveException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 333
    :catch_2
    move-exception v0

    const-string/jumbo v0, "tabmodel"

    const-string/jumbo v7, "Out of memory error while attempting to save tab state.  Erasing."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p0, v5, v6}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->deleteTabState(IZ)V

    goto :goto_1

    .line 337
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 338
    const-string/jumbo v0, "SaveStateTime"

    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->logExecutionTime(Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 340
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 341
    return-void
.end method

.method public saveTabListAsynchronously()V
    .locals 3

    .prologue
    .line 861
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->cancel(Z)Z

    .line 862
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    .line 863
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 864
    return-void
.end method

.method public setTabContentManager(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 263
    return-void
.end method
