.class public Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;
.source "DocumentTabModelSelector.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
.implements Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;


# static fields
.field private static final ACTIVITY_DELEGATE_FOR_TESTS_LOCK:Ljava/lang/Object;

.field public static final PREF_IS_INCOGNITO_SELECTED:Ljava/lang/String; = "is_incognito_selected"

.field public static final PREF_PACKAGE:Ljava/lang/String; = "com.google.android.apps.chrome.document"

.field private static final STORAGE_DELEGATE_FOR_TESTS_LOCK:Ljava/lang/Object;

.field private static sActivityDelegateForTests:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

.field private static sPrioritizedTabId:I

.field private static sStorageDelegateForTests:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;


# instance fields
.field private final mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

.field private final mIncognitoTabDelegate:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

.field private final mIncognitoTabModel:Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

.field private final mRegularTabDelegate:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

.field private final mRegularTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

.field private final mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->ACTIVITY_DELEGATE_FOR_TESTS_LOCK:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->STORAGE_DELEGATE_FOR_TESTS_LOCK:Ljava/lang/Object;

    .line 53
    const/4 v0, -0x1

    sput v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sPrioritizedTabId:I

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;-><init>()V

    .line 92
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sActivityDelegateForTests:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    .line 94
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sStorageDelegateForTests:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    if-nez v0, :cond_1

    :goto_1
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    .line 96
    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mRegularTabDelegate:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    .line 97
    iput-object p4, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mIncognitoTabDelegate:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    .line 99
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 100
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    sget v5, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sPrioritizedTabId:I

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;ZILandroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mRegularTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    .line 102
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

    new-instance v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;

    invoke-direct {v1, p0, v6}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;Landroid/content/Context;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;-><init>(Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mIncognitoTabModel:Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

    .line 121
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->initializeTabIdCounter()V

    .line 124
    const-string/jumbo v0, "com.google.android.apps.chrome.document"

    invoke-virtual {v6, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    const-string/jumbo v1, "is_incognito_selected"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mRegularTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mIncognitoTabModel:Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->initialize(Z[Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    .line 128
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForAllActivities(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 129
    return-void

    .line 92
    :cond_0
    sget-object p1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sActivityDelegateForTests:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    goto :goto_0

    .line 94
    :cond_1
    sget-object p2, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sStorageDelegateForTests:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;)Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;)Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sPrioritizedTabId:I

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mRegularTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;)Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mIncognitoTabModel:Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

    return-object v0
.end method

.method public static createDocumentDataString(ILjava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getLargestTaskIdFromRecents()I
    .locals 3

    .prologue
    .line 153
    const/4 v1, -0x1

    .line 154
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 157
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 158
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 161
    goto :goto_0

    .line 162
    :cond_1
    return v1
.end method

.method private getMaxTabId(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;I)I
    .locals 3

    .prologue
    .line 144
    .line 145
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getCount()I

    move-result v1

    .line 146
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 147
    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return p2
.end method

.method private initializeTabIdCounter()V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getLargestTaskIdFromRecents()I

    move-result v0

    .line 138
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mRegularTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getMaxTabId(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;I)I

    move-result v0

    .line 139
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mIncognitoTabModel:Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getMaxTabId(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;I)I

    move-result v0

    .line 140
    invoke-static {}, Lorg/chromium/chrome/browser/tab/TabIdManager;->getInstance()Lorg/chromium/chrome/browser/tab/TabIdManager;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tab/TabIdManager;->incrementIdCounterTo(I)V

    .line 141
    return-void
.end method

.method public static setActivityDelegateForTests(Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;)V
    .locals 2

    .prologue
    .line 240
    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->ACTIVITY_DELEGATE_FOR_TESTS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    sput-object p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sActivityDelegateForTests:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    .line 242
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setPrioritizedTabId(I)V
    .locals 0

    .prologue
    .line 86
    sput p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sPrioritizedTabId:I

    .line 87
    return-void
.end method

.method public static setStorageDelegateForTests(Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;)V
    .locals 2

    .prologue
    .line 251
    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->STORAGE_DELEGATE_FOR_TESTS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_0
    sput-object p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sStorageDelegateForTests:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    .line 253
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public generateValidTabId()I
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lorg/chromium/chrome/browser/tab/TabIdManager;->getInstance()Lorg/chromium/chrome/browser/tab/TabIdManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/TabIdManager;->generateValidId(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    return-object v0
.end method

.method public getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
    .locals 1

    .prologue
    .line 197
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    return-object v0
.end method

.method public bridge synthetic getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    return-object v0
.end method

.method public getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    return-object v0
.end method

.method public bridge synthetic getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;
    .locals 1

    .prologue
    .line 133
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mIncognitoTabDelegate:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mRegularTabDelegate:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    goto :goto_0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->isDocumentActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 171
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mRegularTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->updateRecentlyClosed()V

    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mIncognitoTabModel:Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->updateRecentlyClosed()V

    goto :goto_0
.end method

.method public onNativeLibraryReady()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mRegularTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->initializeNative()V

    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mIncognitoTabModel:Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->initializeNative()V

    .line 211
    return-void
.end method

.method public openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0, p4}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public selectModel(Z)V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->selectModel(Z)V

    .line 188
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "com.google.android.apps.chrome.document"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "is_incognito_selected"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    return-void
.end method
