.class public Lorg/chromium/chrome/browser/sync/ProfileSyncService;
.super Ljava/lang/Object;
.source "ProfileSyncService.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALL_SELECTABLE_TYPES:[I

.field private static sInitialized:Z

.field private static sProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;


# instance fields
.field private final mListeners:Ljava/util/List;

.field private mMasterSyncEnabledProvider:Lorg/chromium/chrome/browser/sync/ProfileSyncService$MasterSyncEnabledProvider;

.field private mNativeProfileSyncServiceAndroid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-class v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->ALL_SELECTABLE_TYPES:[I

    .line 78
    sput-boolean v1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sInitialized:Z

    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0

    .line 68
    nop

    :array_0
    .array-data 4
        0x6
        0x2
        0x4
        0x3
        0x21
        0xa
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mListeners:Ljava/util/List;

    .line 122
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->init()V

    .line 123
    return-void
.end method

.method public static get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 105
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sInitialized:Z

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;-><init>()V

    .line 107
    sput-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    iget-wide v0, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 110
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sInitialized:Z

    .line 112
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    return-object v0
.end method

.method private static getProfileSyncServiceAndroid()J
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iget-wide v0, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    return-wide v0
.end method

.method private static modelTypeArrayToSet([I)Ljava/util/Set;
    .locals 3

    .prologue
    .line 321
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 322
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 323
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    return-object v1
.end method

.method private static modelTypeSetToArray(Ljava/util/Set;)[I
    .locals 5

    .prologue
    .line 329
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 330
    const/4 v0, 0x0

    .line 331
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 332
    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    .line 333
    goto :goto_0

    .line 334
    :cond_0
    return-object v2
.end method

.method private native nativeEnableEncryptEverything(J)V
.end method

.method private native nativeFlushDirectory(J)V
.end method

.method private native nativeGetAboutInfoForTest(J)Ljava/lang/String;
.end method

.method private native nativeGetActiveDataTypes(J)[I
.end method

.method private native nativeGetAllNodes(JLorg/chromium/chrome/browser/sync/ProfileSyncService$GetAllNodesCallback;)V
.end method

.method private native nativeGetAuthError(J)I
.end method

.method private native nativeGetCurrentSignedInAccountText(J)Ljava/lang/String;
.end method

.method private native nativeGetCustomPassphraseKey(J)[B
.end method

.method private native nativeGetExplicitPassphraseTime(J)J
.end method

.method private native nativeGetLastSyncedTimeForTest(J)J
.end method

.method private native nativeGetPassphraseType(J)I
.end method

.method private native nativeGetPreferredDataTypes(J)[I
.end method

.method private native nativeGetSyncEnterCustomPassphraseBodyText(J)Ljava/lang/String;
.end method

.method private native nativeGetSyncEnterCustomPassphraseBodyWithDateText(J)Ljava/lang/String;
.end method

.method private native nativeGetSyncEnterGooglePassphraseBodyWithDateText(J)Ljava/lang/String;
.end method

.method private native nativeHasExplicitPassphraseTime(J)Z
.end method

.method private native nativeHasKeepEverythingSynced(J)Z
.end method

.method private native nativeHasUnrecoverableError(J)Z
.end method

.method private native nativeInit()J
.end method

.method private native nativeIsBackendInitialized(J)Z
.end method

.method private native nativeIsCryptographerReady(J)Z
.end method

.method private native nativeIsEncryptEverythingAllowed(J)Z
.end method

.method private native nativeIsEncryptEverythingEnabled(J)Z
.end method

.method private native nativeIsFirstSetupComplete(J)Z
.end method

.method private native nativeIsPassphrasePrompted(J)Z
.end method

.method private native nativeIsPassphraseRequiredForDecryption(J)Z
.end method

.method private native nativeIsSyncActive(J)Z
.end method

.method private native nativeIsSyncRequested(J)Z
.end method

.method private native nativeIsUsingSecondaryPassphrase(J)Z
.end method

.method private native nativeOverrideNetworkResourcesForTest(JJ)V
.end method

.method private native nativeQuerySyncStatusSummary(J)Ljava/lang/String;
.end method

.method private native nativeRequestStart(J)V
.end method

.method private native nativeRequestStop(J)V
.end method

.method private native nativeSetDecryptionPassphrase(JLjava/lang/String;)Z
.end method

.method private native nativeSetEncryptionPassphrase(JLjava/lang/String;)V
.end method

.method private native nativeSetFirstSetupComplete(J)V
.end method

.method private native nativeSetPassphrasePrompted(JZ)V
.end method

.method private native nativeSetPreferredDataTypes(JZ[I)V
.end method

.method private native nativeSetSetupInProgress(JZ)V
.end method

.method private native nativeSetSyncSessionsId(JLjava/lang/String;)V
.end method

.method private native nativeSignOutSync(J)V
.end method

.method private static onGetAllNodesResult(Lorg/chromium/chrome/browser/sync/ProfileSyncService$GetAllNodesCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService$GetAllNodesCallback;->onResult(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public static overrideForTests(Lorg/chromium/chrome/browser/sync/ProfileSyncService;)V
    .locals 1

    .prologue
    .line 117
    sput-object p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->sInitialized:Z

    .line 119
    return-void
.end method


# virtual methods
.method public addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 391
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method public enableEncryptEverything()V
    .locals 2

    .prologue
    .line 272
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 273
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeEnableEncryptEverything(J)V

    .line 274
    return-void
.end method

.method public flushDirectory()V
    .locals 2

    .prologue
    .line 438
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeFlushDirectory(J)V

    .line 439
    return-void
.end method

.method public getActiveDataTypes()Ljava/util/Set;
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetActiveDataTypes(J)[I

    move-result-object v0

    .line 305
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->modelTypeArrayToSet([I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllNodes(Lorg/chromium/chrome/browser/sync/ProfileSyncService$GetAllNodesCallback;)V
    .locals 2

    .prologue
    .line 528
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetAllNodes(JLorg/chromium/chrome/browser/sync/ProfileSyncService$GetAllNodesCallback;)V

    .line 529
    return-void
.end method

.method public getAuthError()Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetAuthError(J)I

    move-result v0

    .line 293
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->fromCode(I)Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSignedInAccountText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetCurrentSignedInAccountText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPassphraseKey()[B
    .locals 2

    .prologue
    .line 222
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isUsingSecondaryPassphrase()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetCustomPassphraseKey(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExplicitPassphraseTime()J
    .locals 2

    .prologue
    .line 187
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetExplicitPassphraseTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncedTimeForTest()J
    .locals 2

    .prologue
    .line 449
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetLastSyncedTimeForTest(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPassphraseType()Lorg/chromium/sync/PassphraseType;
    .locals 2

    .prologue
    .line 170
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 171
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetPassphraseType(J)I

    move-result v0

    .line 172
    invoke-static {v0}, Lorg/chromium/sync/PassphraseType;->fromInternalValue(I)Lorg/chromium/sync/PassphraseType;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredDataTypes()Ljava/util/Set;
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetPreferredDataTypes(J)[I

    move-result-object v0

    .line 317
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->modelTypeArrayToSet([I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSyncEnterCustomPassphraseBodyText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetSyncEnterCustomPassphraseBodyText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncEnterCustomPassphraseBodyWithDateText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetSyncEnterCustomPassphraseBodyWithDateText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncEnterGooglePassphraseBodyWithDateText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetSyncEnterGooglePassphraseBodyWithDateText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncInternalsInfoForTest()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 417
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeGetAboutInfoForTest(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExplicitPassphraseTime()Z
    .locals 2

    .prologue
    .line 179
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeHasExplicitPassphraseTime(J)Z

    move-result v0

    return v0
.end method

.method public hasKeepEverythingSynced()Z
    .locals 2

    .prologue
    .line 338
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeHasKeepEverythingSynced(J)Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 136
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    .line 137
    return-void
.end method

.method public isBackendInitialized()Z
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsBackendInitialized(J)Z

    move-result v0

    return v0
.end method

.method public isCryptographerReady()Z
    .locals 2

    .prologue
    .line 282
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsCryptographerReady(J)Z

    move-result v0

    return v0
.end method

.method public isEncryptEverythingAllowed()Z
    .locals 2

    .prologue
    .line 253
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 254
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsEncryptEverythingAllowed(J)Z

    move-result v0

    return v0
.end method

.method public isEncryptEverythingEnabled()Z
    .locals 2

    .prologue
    .line 263
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 264
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsEncryptEverythingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isFirstSetupComplete()Z
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsFirstSetupComplete(J)Z

    move-result v0

    return v0
.end method

.method public isMasterSyncEnabled()Z
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 510
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mMasterSyncEnabledProvider:Lorg/chromium/chrome/browser/sync/ProfileSyncService$MasterSyncEnabledProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 511
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mMasterSyncEnabledProvider:Lorg/chromium/chrome/browser/sync/ProfileSyncService$MasterSyncEnabledProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService$MasterSyncEnabledProvider;->isMasterSyncEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isPassphrasePrompted()Z
    .locals 2

    .prologue
    .line 474
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsPassphrasePrompted(J)Z

    move-result v0

    return v0
.end method

.method public isPassphraseRequiredForDecryption()Z
    .locals 2

    .prologue
    .line 233
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 234
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsPassphraseRequiredForDecryption(J)Z

    move-result v0

    return v0
.end method

.method public isSyncActive()Z
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsSyncActive(J)Z

    move-result v0

    return v0
.end method

.method public isSyncRequested()Z
    .locals 2

    .prologue
    .line 369
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsSyncRequested(J)Z

    move-result v0

    return v0
.end method

.method public isUsingSecondaryPassphrase()Z
    .locals 2

    .prologue
    .line 217
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 218
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeIsUsingSecondaryPassphrase(J)Z

    move-result v0

    return v0
.end method

.method public overrideNetworkResourcesForTest(J)V
    .locals 3

    .prologue
    .line 462
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeOverrideNetworkResourcesForTest(JJ)V

    .line 463
    return-void
.end method

.method public removeSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 396
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public requestStart()V
    .locals 2

    .prologue
    .line 424
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeRequestStart(J)V

    .line 425
    return-void
.end method

.method public requestStop()V
    .locals 2

    .prologue
    .line 431
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeRequestStop(J)V

    .line 432
    return-void
.end method

.method public setDecryptionPassphrase(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 287
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 288
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetDecryptionPassphrase(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setEncryptionPassphrase(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 277
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 278
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetEncryptionPassphrase(JLjava/lang/String;)V

    .line 279
    return-void
.end method

.method public setFirstSetupComplete()V
    .locals 2

    .prologue
    .line 355
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetFirstSetupComplete(J)V

    .line 356
    return-void
.end method

.method setMasterSyncEnabledProvider(Lorg/chromium/chrome/browser/sync/ProfileSyncService$MasterSyncEnabledProvider;)V
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 497
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mMasterSyncEnabledProvider:Lorg/chromium/chrome/browser/sync/ProfileSyncService$MasterSyncEnabledProvider;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 498
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mMasterSyncEnabledProvider:Lorg/chromium/chrome/browser/sync/ProfileSyncService$MasterSyncEnabledProvider;

    .line 499
    return-void
.end method

.method public setPassphrasePrompted(Z)V
    .locals 2

    .prologue
    .line 486
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetPassphrasePrompted(JZ)V

    .line 488
    return-void
.end method

.method public setPreferredDataTypes(ZLjava/util/Set;)V
    .locals 4

    .prologue
    .line 350
    iget-wide v2, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    if-eqz p1, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->ALL_SELECTABLE_TYPES:[I

    :goto_0
    invoke-direct {p0, v2, v3, p1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetPreferredDataTypes(JZ[I)V

    .line 352
    return-void

    .line 350
    :cond_0
    invoke-static {p2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->modelTypeSetToArray(Ljava/util/Set;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public setSessionsId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 158
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetSyncSessionsId(JLjava/lang/String;)V

    .line 159
    return-void
.end method

.method public setSetupInProgress(Z)V
    .locals 2

    .prologue
    .line 386
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeSetSetupInProgress(JZ)V

    .line 387
    return-void
.end method

.method public syncStateChanged()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    .line 410
    invoke-interface {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;->syncStateChanged()V

    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method
