.class public Lorg/chromium/components/invalidation/InvalidationClientService;
.super Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;
.source "InvalidationClientService.java"


# static fields
.field static final CLIENT_TYPE:I = 0x3fa

.field private static sClientId:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sIsClientStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lorg/chromium/components/invalidation/InvalidationClientService;->getOAuth2ScopeWithType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static computeRegistrationOps(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 412
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 413
    invoke-interface {p2, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 416
    invoke-interface {p3, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 417
    invoke-interface {p3, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 418
    return-void
.end method

.method private ensureAccount(Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 256
    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    new-instance v0, Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-direct {v0, p0}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {v0}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getSavedSyncedAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    sget-boolean v0, Lorg/chromium/components/invalidation/InvalidationClientService;->sIsClientStarted:Z

    if-eqz v0, :cond_2

    .line 262
    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->stopClient()V

    .line 264
    :cond_2
    invoke-direct {p0, p1}, Lorg/chromium/components/invalidation/InvalidationClientService;->setAccount(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method private ensureClientStartState()V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->shouldClientBeRunning()Z

    move-result v0

    .line 242
    if-nez v0, :cond_1

    sget-boolean v1, Lorg/chromium/components/invalidation/InvalidationClientService;->sIsClientStarted:Z

    if-eqz v1, :cond_1

    .line 244
    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->stopClient()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/chromium/components/invalidation/InvalidationClientService;->sIsClientStarted:Z

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->startClient()V

    goto :goto_0
.end method

.method static getClientIdForTest()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 485
    sget-object v0, Lorg/chromium/components/invalidation/InvalidationClientService;->sClientId:[B

    return-object v0
.end method

.method static getIsClientStartedForTest()Z
    .locals 1

    .prologue
    .line 479
    sget-boolean v0, Lorg/chromium/components/invalidation/InvalidationClientService;->sIsClientStarted:Z

    return v0
.end method

.method private static getOAuth2ScopeWithType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    const-string/jumbo v0, "oauth2:https://www.googleapis.com/auth/chromesync"

    return-object v0
.end method

.method private static joinRegistrations(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 331
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    :goto_0
    return-object p0

    .line 334
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 339
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 340
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p0, v0

    .line 341
    goto :goto_0
.end method

.method private readNonSyncRegistrationsFromPrefs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-direct {v0, p0}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getSavedObjectIds()Ljava/util/Set;

    move-result-object v0

    .line 311
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 312
    :cond_0
    return-object v0
.end method

.method private readSyncRegistrationsFromPrefs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-direct {v0, p0}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getSavedSyncedTypes()Ljava/util/Set;

    move-result-object v0

    .line 301
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/chromium/sync/ModelTypeHelper;->notificationTypesToObjectIds(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private requestSync(Lcom/google/ipc/invalidation/external/client/types/ObjectId;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 428
    const/4 v1, 0x0

    .line 429
    const/4 v0, 0x0

    .line 430
    if-eqz p1, :cond_0

    .line 431
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->getName()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 432
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->getSource()I

    move-result v1

    .line 434
    :cond_0
    invoke-static {v0, v1, p2, p3, p4}, Lorg/chromium/components/invalidation/PendingInvalidation;->createBundle(Ljava/lang/String;IJLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 436
    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v1

    .line 437
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->getContractAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/components/invalidation/InvalidationClientService;->requestSyncFromContentResolver(Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method private setAccount(Landroid/accounts/Account;)V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-direct {v0, p0}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v0}, Lorg/chromium/sync/notifier/InvalidationPreferences;->edit()Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1, p1}, Lorg/chromium/sync/notifier/InvalidationPreferences;->setAccount(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;Landroid/accounts/Account;)V

    .line 292
    invoke-virtual {v0, v1}, Lorg/chromium/sync/notifier/InvalidationPreferences;->commit(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Z

    .line 293
    return-void
.end method

.method private static setClientId([B)V
    .locals 0

    .prologue
    .line 493
    sput-object p0, Lorg/chromium/components/invalidation/InvalidationClientService;->sClientId:[B

    .line 494
    return-void
.end method

.method private static setIsClientStarted(Z)V
    .locals 0

    .prologue
    .line 497
    sput-boolean p0, Lorg/chromium/components/invalidation/InvalidationClientService;->sIsClientStarted:Z

    .line 498
    return-void
.end method

.method private setRegisteredTypes(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 356
    sget-object v0, Lorg/chromium/components/invalidation/InvalidationClientService;->sClientId:[B

    if-nez v0, :cond_2

    move-object v0, v1

    .line 358
    :goto_0
    sget-object v2, Lorg/chromium/components/invalidation/InvalidationClientService;->sClientId:[B

    if-nez v2, :cond_3

    .line 362
    :goto_1
    new-instance v2, Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-direct {v2, p0}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {v2}, Lorg/chromium/sync/notifier/InvalidationPreferences;->edit()Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;

    move-result-object v3

    .line 364
    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {v2, v3, p1}, Lorg/chromium/sync/notifier/InvalidationPreferences;->setSyncTypes(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;Ljava/util/Collection;)V

    .line 367
    :cond_0
    if-eqz p2, :cond_1

    .line 368
    invoke-virtual {v2, v3, p2}, Lorg/chromium/sync/notifier/InvalidationPreferences;->setObjectIds(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;Ljava/util/Collection;)V

    .line 370
    :cond_1
    invoke-virtual {v2, v3}, Lorg/chromium/sync/notifier/InvalidationPreferences;->commit(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Z

    .line 374
    sget-object v2, Lorg/chromium/components/invalidation/InvalidationClientService;->sClientId:[B

    if-nez v2, :cond_4

    .line 398
    :goto_2
    return-void

    .line 356
    :cond_2
    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->readSyncRegistrationsFromPrefs()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_3
    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->readNonSyncRegistrationsFromPrefs()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 382
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p1}, Lorg/chromium/sync/ModelTypeHelper;->notificationTypesToObjectIds(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    .line 385
    :goto_3
    if-eqz p2, :cond_6

    .line 387
    :goto_4
    invoke-static {p2, v2}, Lorg/chromium/components/invalidation/InvalidationClientService;->joinRegistrations(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 389
    invoke-static {v1, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->joinRegistrations(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 393
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 394
    invoke-static {v0, v2, v3, v1}, Lorg/chromium/components/invalidation/InvalidationClientService;->computeRegistrationOps(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 396
    sget-object v0, Lorg/chromium/components/invalidation/InvalidationClientService;->sClientId:[B

    invoke-virtual {p0, v0, v1}, Lorg/chromium/components/invalidation/InvalidationClientService;->unregister([BLjava/lang/Iterable;)V

    .line 397
    sget-object v0, Lorg/chromium/components/invalidation/InvalidationClientService;->sClientId:[B

    invoke-virtual {p0, v0, v3}, Lorg/chromium/components/invalidation/InvalidationClientService;->register([BLjava/lang/Iterable;)V

    goto :goto_2

    :cond_5
    move-object v2, v0

    .line 382
    goto :goto_3

    :cond_6
    move-object p2, v1

    .line 385
    goto :goto_4
.end method

.method private startClient()V
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->get()Lorg/chromium/sync/notifier/InvalidationClientNameProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->getInvalidatorClientName()[B

    move-result-object v0

    .line 275
    const/16 v1, 0x3fa

    invoke-static {p0, v1, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->createStartIntent(Landroid/content/Context;I[B)Landroid/content/Intent;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 277
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->setIsClientStarted(Z)V

    .line 278
    return-void
.end method

.method private stopClient()V
    .locals 1

    .prologue
    .line 282
    invoke-static {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->createStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 283
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->setIsClientStarted(Z)V

    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->setClientId([B)V

    .line 285
    return-void
.end method


# virtual methods
.method public informError(Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V
    .locals 3

    .prologue
    .line 171
    const-string/jumbo v0, "cr.invalidation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalidation client error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->isTransient()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/chromium/components/invalidation/InvalidationClientService;->sIsClientStarted:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->stopClient()V

    .line 178
    :cond_0
    return-void
.end method

.method public informRegistrationFailure([BLcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    const-string/jumbo v0, "cr.invalidation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Registration failure on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ; transient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz p3, :cond_0

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->readRegistrationsFromPrefs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p0, p1, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->register([BLjava/lang/Iterable;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->unregister([BLjava/lang/Iterable;)V

    goto :goto_0
.end method

.method public informRegistrationStatus([BLcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V
    .locals 3

    .prologue
    .line 153
    const-string/jumbo v0, "cr.invalidation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Registration status for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->readRegistrationsFromPrefs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 156
    sget-object v2, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->REGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    if-ne p3, v2, :cond_1

    .line 157
    if-nez v1, :cond_0

    .line 158
    const-string/jumbo v1, "cr.invalidation"

    const-string/jumbo v2, "Unregistering for object we\'re no longer interested in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0, p1, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->unregister([BLjava/lang/Iterable;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v1, "cr.invalidation"

    const-string/jumbo v2, "Registering for an object"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0, p1, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->register([BLjava/lang/Iterable;)V

    goto :goto_0
.end method

.method public invalidate(Lcom/google/ipc/invalidation/external/client/types/Invalidation;[B)V
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->getPayload()[B

    move-result-object v1

    .line 116
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->getObjectId()Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->getVersion()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->requestSync(Lcom/google/ipc/invalidation/external/client/types/ObjectId;JLjava/lang/String;)V

    .line 118
    invoke-virtual {p0, p2}, Lorg/chromium/components/invalidation/InvalidationClientService;->acknowledge([B)V

    .line 119
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public invalidateAll([B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lorg/chromium/components/invalidation/InvalidationClientService;->requestSync(Lcom/google/ipc/invalidation/external/client/types/ObjectId;JLjava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Lorg/chromium/components/invalidation/InvalidationClientService;->acknowledge([B)V

    .line 131
    return-void
.end method

.method public invalidateUnknownVersion(Lcom/google/ipc/invalidation/external/client/types/ObjectId;[B)V
    .locals 3

    .prologue
    .line 123
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/chromium/components/invalidation/InvalidationClientService;->requestSync(Lcom/google/ipc/invalidation/external/client/types/ObjectId;JLjava/lang/String;)V

    .line 124
    invoke-virtual {p0, p2}, Lorg/chromium/components/invalidation/InvalidationClientService;->acknowledge([B)V

    .line 125
    return-void
.end method

.method isChromeInForeground()Z
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    return v0
.end method

.method isSyncEnabled()Z
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string/jumbo v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 94
    :goto_1
    invoke-direct {p0, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->ensureAccount(Landroid/accounts/Account;)V

    .line 95
    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->ensureClientStartState()V

    .line 98
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationIntentProtocol;->isStop(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/chromium/components/invalidation/InvalidationClientService;->sIsClientStarted:Z

    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->stopClient()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 90
    goto :goto_1

    .line 101
    :cond_2
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationIntentProtocol;->isRegisteredTypesChange(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    const-string/jumbo v0, "registered_types"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_3
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationIntentProtocol;->getRegisteredObjectIds(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->setRegisteredTypes(Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-super {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->onHandleIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method readRegistrationsFromPrefs()Ljava/util/Set;
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->readSyncRegistrationsFromPrefs()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->readNonSyncRegistrationsFromPrefs()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/components/invalidation/InvalidationClientService;->joinRegistrations(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public readState()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-direct {v0, p0}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getInternalNotificationClientState()[B

    move-result-object v0

    return-object v0
.end method

.method public ready([B)V
    .locals 0

    .prologue
    .line 182
    invoke-static {p1}, Lorg/chromium/components/invalidation/InvalidationClientService;->setClientId([B)V

    .line 186
    invoke-virtual {p0, p1}, Lorg/chromium/components/invalidation/InvalidationClientService;->reissueRegistrations([B)V

    .line 187
    return-void
.end method

.method public reissueRegistrations([B)V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->readRegistrationsFromPrefs()Ljava/util/Set;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0, p1, v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->register([BLjava/lang/Iterable;)V

    .line 195
    :cond_0
    return-void
.end method

.method public requestAuthToken(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 200
    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    .line 201
    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "cr.invalidation"

    const-string/jumbo v1, "No signed-in user; cannot send message to data center"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    invoke-static {}, Lorg/chromium/components/invalidation/InvalidationClientService;->getOAuth2ScopeWithType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/chromium/components/invalidation/InvalidationClientService$1;

    invoke-direct {v3, p0, p1}, Lorg/chromium/components/invalidation/InvalidationClientService$1;-><init>(Lorg/chromium/components/invalidation/InvalidationClientService;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v0, p2, v2, v3}, Lorg/chromium/sync/signin/AccountManagerHelper;->getNewAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    goto :goto_0
.end method

.method requestSyncFromContentResolver(Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 448
    const-string/jumbo v0, "cr.invalidation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Request sync: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lorg/chromium/components/invalidation/PendingInvalidation;

    invoke-direct {v2, p1}, Lorg/chromium/components/invalidation/PendingInvalidation;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lorg/chromium/components/invalidation/PendingInvalidation;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 451
    return-void
.end method

.method shouldClientBeRunning()Z
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/invalidation/InvalidationClientService;->isChromeInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeState([B)V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-direct {v0, p0}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v0}, Lorg/chromium/sync/notifier/InvalidationPreferences;->edit()Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1, p1}, Lorg/chromium/sync/notifier/InvalidationPreferences;->setInternalNotificationClientState(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;[B)V

    .line 228
    invoke-virtual {v0, v1}, Lorg/chromium/sync/notifier/InvalidationPreferences;->commit(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Z

    .line 229
    return-void
.end method
