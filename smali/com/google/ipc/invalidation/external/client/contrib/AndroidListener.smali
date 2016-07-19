.class public abstract Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;
.super Landroid/app/IntentService;
.source "AndroidListener.java"


# static fields
.field static initialMaxDelayMs:I

.field static lastClientIdForTest:Lcom/google/ipc/invalidation/b/c;

.field private static final logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

.field static maxDelayFactor:I


# instance fields
.field private final clock:Lcom/google/ipc/invalidation/ticl/android2/a;

.field private intentMapper:Lcom/google/ipc/invalidation/ticl/android2/e;

.field private final invalidationListener:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

.field private state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 120
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forPrefix(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 124
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->initialMaxDelayMs:I

    .line 128
    const/16 v0, 0x168

    sput v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->maxDelayFactor:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 208
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;-><init>(Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->invalidationListener:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    .line 198
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/a;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/android2/a;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->clock:Lcom/google/ipc/invalidation/ticl/android2/a;

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->setIntentRedelivery(Z)V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;)Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    return-object v0
.end method

.method public static createAcknowledgeIntent(Landroid/content/Context;[B)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 326
    invoke-static {p0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->createAckIntent(Landroid/content/Context;[B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisterIntent(Landroid/content/Context;[BLjava/lang/Iterable;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 252
    invoke-static {p0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p1}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p2, v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->createRegistrationIntent(Landroid/content/Context;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Iterable;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createStartIntent(Landroid/content/Context;I[B)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 228
    invoke-static {p0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {p2}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->createStartIntent(Landroid/content/Context;ILcom/google/ipc/invalidation/b/c;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createStartIntent(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 218
    invoke-static {p0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p1, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->clientName:[B

    invoke-static {v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget v0, p1, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->clientType:I

    iget-object v1, p1, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->clientName:[B

    invoke-static {v1}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->allowSuppression:Z

    invoke-static {p0, v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->createStartIntent(Landroid/content/Context;ILcom/google/ipc/invalidation/b/c;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createStopIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 238
    invoke-static {p0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->createStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createUnregisterIntent(Landroid/content/Context;[BLjava/lang/Iterable;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 284
    invoke-static {p0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {p1}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->createRegistrationIntent(Landroid/content/Context;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Iterable;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getClient()Lcom/google/ipc/invalidation/external/client/InvalidationClient;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->intentMapper:Lcom/google/ipc/invalidation/ticl/android2/e;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    return-object v0
.end method

.method private getPersistentState()Lcom/google/ipc/invalidation/ticl/a/c;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->readState()[B

    move-result-object v1

    .line 512
    if-eqz v1, :cond_0

    .line 513
    :try_start_0
    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/c;->a([B)Lcom/google/ipc/invalidation/ticl/a/c;

    move-result-object v1

    .line 515
    invoke-static {v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->isValidAndroidListenerState(Lcom/google/ipc/invalidation/ticl/a/c;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 516
    sget-object v1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Invalid listener state."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 519
    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    sget-object v2, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Failed to parse listener state: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleRegistrationCommand(Lcom/google/ipc/invalidation/ticl/a/f;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 579
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/f;->e()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->getClientId()Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    sget-object v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Ignoring registration request for old client. Old ID = %s, New ID = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/f;->e()Lcom/google/ipc/invalidation/b/c;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v4}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->getClientId()Lcom/google/ipc/invalidation/b/c;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    :cond_0
    return-void

    .line 584
    :cond_1
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/f;->a()Z

    move-result v2

    .line 585
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 586
    invoke-static {v0}, Landroid/support/customtabs/a;->convertFromObjectIdProto(Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v4

    .line 589
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 590
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v0, v4}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->getNextDelay(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)I

    move-result v0

    .line 592
    :goto_1
    if-nez v0, :cond_2

    .line 593
    invoke-direct {p0, v4, v2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->issueRegistration(Lcom/google/ipc/invalidation/external/client/types/ObjectId;Z)V

    goto :goto_0

    .line 597
    :cond_2
    iget-object v5, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->clock:Lcom/google/ipc/invalidation/ticl/android2/a;

    invoke-virtual {v5}, Lcom/google/ipc/invalidation/ticl/android2/a;->a()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 598
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v0, v4, v2, v6, v7}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->addScheduledRegistrationRetry(Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZJ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private initializeState()V
    .locals 4

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getPersistentState()Lcom/google/ipc/invalidation/ticl/a/c;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    new-instance v1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    sget v2, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->initialMaxDelayMs:I

    sget v3, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->maxDelayFactor:I

    invoke-direct {v1, v2, v3, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;-><init>(IILcom/google/ipc/invalidation/ticl/a/c;)V

    iput-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    sget v1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->initialMaxDelayMs:I

    sget v2, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->maxDelayFactor:I

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;-><init>(II)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    goto :goto_0
.end method

.method private issueRegistration(Lcom/google/ipc/invalidation/external/client/types/ObjectId;Z)V
    .locals 1

    .prologue
    .line 612
    if-eqz p2, :cond_1

    .line 613
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->addDesiredRegistration(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getClient()Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/ipc/invalidation/external/client/InvalidationClient;->register(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->removeDesiredRegistration(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Z

    .line 622
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getClient()Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/ipc/invalidation/external/client/InvalidationClient;->unregister(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    goto :goto_0
.end method

.method public static setAuthToken(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {p3}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {p0, p1, p2, p3}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->issueAuthTokenResponse(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private tryHandleAckIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 650
    invoke-static {p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->findAckHandle(Landroid/content/Intent;)[B

    move-result-object v0

    .line 651
    if-nez v0, :cond_0

    .line 652
    const/4 v0, 0x0

    .line 655
    :goto_0
    return v0

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getClient()Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    move-result-object v1

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->newInstance([B)Lcom/google/ipc/invalidation/external/client/types/AckHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/ipc/invalidation/external/client/InvalidationClient;->acknowledge(Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    .line 655
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private tryHandleAuthTokenRequestIntent(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 532
    invoke-static {p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->isAuthTokenRequest(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 550
    :goto_0
    return v0

    .line 538
    :cond_0
    const-string/jumbo v0, "com.google.ipc.invalidaton.AUTH_TOKEN_INVALIDATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    const-string/jumbo v0, "com.google.ipc.invalidation.AUTH_TOKEN_PENDING_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 543
    if-nez v0, :cond_1

    .line 544
    sget-object v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Authorization request without pending intent extra."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 548
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->requestAuthToken(Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private tryHandleBackgroundInvalidationsIntent(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 663
    const-string/jumbo v0, "ipcinv-background-inv"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 664
    if-nez v0, :cond_0

    .line 678
    :goto_0
    return v4

    .line 668
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/X;->a([B)Lcom/google/ipc/invalidation/ticl/a/X;

    move-result-object v0

    .line 669
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 670
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/X;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/Y;

    .line 671
    invoke-static {v0}, Landroid/support/customtabs/a;->convertFromInvalidationProto(Lcom/google/ipc/invalidation/ticl/a/Y;)Lcom/google/ipc/invalidation/external/client/types/Invalidation;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 674
    :catch_0
    move-exception v0

    .line 675
    sget-object v1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Failed to parse background invalidation intent payload: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 673
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->backgroundInvalidateForInternalUse(Ljava/lang/Iterable;)V
    :try_end_1
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private tryHandleRegistrationIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 567
    invoke-static {p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->findRegistrationCommand(Landroid/content/Intent;)Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->isValidRegistrationCommand(Lcom/google/ipc/invalidation/ticl/a/f;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 569
    :cond_0
    const/4 v0, 0x0

    .line 572
    :goto_0
    return v0

    .line 571
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->handleRegistrationCommand(Lcom/google/ipc/invalidation/ticl/a/f;)V

    .line 572
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private tryHandleStartIntent(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 628
    invoke-static {p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->findStartCommand(Landroid/content/Intent;)Lcom/google/ipc/invalidation/ticl/a/g;

    move-result-object v2

    .line 629
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->isValidStartCommand(Lcom/google/ipc/invalidation/ticl/a/g;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 645
    :goto_0
    return v0

    .line 634
    :cond_1
    new-instance v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    sget v3, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->initialMaxDelayMs:I

    sget v4, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->maxDelayFactor:I

    invoke-direct {v0, v3, v4}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;-><init>(II)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    .line 636
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/m;->a()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    .line 637
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/g;->f()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->l()Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 638
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->m()Lcom/google/ipc/invalidation/ticl/a/O;

    move-result-object v0

    .line 639
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/g;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/google/ipc/invalidation/ticl/a/O;->k:Ljava/lang/Boolean;

    .line 640
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/O;->a()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    .line 642
    :cond_2
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/g;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/g;->d()Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    invoke-static {v3, v2, v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/a;->a(ILcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/N;Z)Landroid/content/Intent;

    move-result-object v0

    .line 644
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->issueTiclIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 645
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private tryHandleStopIntent(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 555
    invoke-static {p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->isStopIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getClient()Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/InvalidationClient;->stop()V

    .line 559
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public acknowledge([B)V
    .locals 2

    .prologue
    .line 334
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->createAcknowledgeIntent(Landroid/content/Context;[B)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 338
    return-void
.end method

.method protected backgroundInvalidateForInternalUse(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method getStateForTest()Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    return-object v0
.end method

.method public abstract informError(Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V
.end method

.method public abstract informRegistrationFailure([BLcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V
.end method

.method public abstract informRegistrationStatus([BLcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V
.end method

.method public abstract invalidate(Lcom/google/ipc/invalidation/external/client/types/Invalidation;[B)V
.end method

.method public abstract invalidateAll([B)V
.end method

.method public abstract invalidateUnknownVersion(Lcom/google/ipc/invalidation/external/client/types/ObjectId;[B)V
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 428
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 431
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/e;

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->invalidationListener:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    invoke-direct {v0, v1, p0}, Lcom/google/ipc/invalidation/ticl/android2/e;-><init>(Lcom/google/ipc/invalidation/external/client/InvalidationListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->intentMapper:Lcom/google/ipc/invalidation/ticl/android2/e;

    .line 432
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 442
    if-nez p1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    if-nez v0, :cond_2

    .line 449
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->initializeState()V

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->clock:Lcom/google/ipc/invalidation/ticl/android2/a;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->takeRegistrationRetriesUpTo(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/f;

    .line 456
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->handleRegistrationCommand(Lcom/google/ipc/invalidation/ticl/a/f;)V

    goto :goto_1

    .line 462
    :cond_3
    invoke-static {p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->isScheduledTaskIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->tryHandleAuthTokenRequestIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->tryHandleRegistrationIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->tryHandleStartIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->tryHandleStopIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->tryHandleAckIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->tryHandleBackgroundInvalidationsIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 469
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->intentMapper:Lcom/google/ipc/invalidation/ticl/android2/e;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/ticl/android2/e;->a(Landroid/content/Intent;)V

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->getNextExecuteMs()Ljava/lang/Long;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_5

    .line 475
    sget-object v1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "scheduling alarm at %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->issueScheduledTaskIntent(Landroid/content/Context;J)V

    .line 481
    :cond_5
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->getIsDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->marshal()Lcom/google/ipc/invalidation/ticl/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/c;->i()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->writeState([B)V

    .line 483
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->resetIsDirty()V

    goto/16 :goto_0
.end method

.method public abstract readState()[B
.end method

.method public abstract ready([B)V
.end method

.method public register([BLjava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 268
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 272
    invoke-static {v0, p1, p2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->createRegisterIntent(Landroid/content/Context;[BLjava/lang/Iterable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 273
    return-void
.end method

.method public abstract reissueRegistrations([B)V
.end method

.method public abstract requestAuthToken(Landroid/app/PendingIntent;Ljava/lang/String;)V
.end method

.method public unregister([BLjava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 317
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 321
    invoke-static {v0, p1, p2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->createUnregisterIntent(Landroid/content/Context;[BLjava/lang/Iterable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 322
    return-void
.end method

.method public abstract writeState([B)V
.end method
