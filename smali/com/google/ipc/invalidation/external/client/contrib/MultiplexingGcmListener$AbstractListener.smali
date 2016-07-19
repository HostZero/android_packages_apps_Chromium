.class public abstract Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;
.super Landroid/app/IntentService;
.source "MultiplexingGcmListener.java"


# static fields
.field private static final EXTRA_WAKELOCK_NAME:Ljava/lang/String; = "com.google.ipc.invalidation.gcmmplex.listener.WAKELOCK_NAME"

.field private static final WAKELOCK_PREFIX:Ljava/lang/String; = "multiplexing-gcm-listener:"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->setIntentRedelivery(Z)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->getWakelockKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.EVENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    invoke-static {}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->access$100()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Ignoring intent with unknown action: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->onMessage(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :cond_1
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.REGISTERED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.REGID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->onRegistered(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.UNREGISTERED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.REGID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->onUnregistered(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_3
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.DELETED_MSGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.NUM_DELETED_MSGS"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 229
    if-ne v0, v4, :cond_4

    .line 230
    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    invoke-static {}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->access$100()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Could not parse num-deleted field of GCM broadcast: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->onDeletedMessages(I)V

    goto :goto_0

    .line 235
    :cond_5
    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    invoke-static {}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->access$100()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Broadcast GCM intent with no known operation: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getWakelockKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "multiplexing-gcm-listener:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract onDeletedMessages(I)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 189
    if-nez p1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 196
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->doHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.listener.WAKELOCK_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->getWakelockKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    invoke-static {}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->access$100()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    const-string/jumbo v3, "Receiver acquired wakelock \'%s\' but releasing \'%s\'"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_1
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/o;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "com.google.ipc.invalidation.gcmmplex.listener.WAKELOCK_NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener$AbstractListener;->getWakelockKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    invoke-static {}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->access$100()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v3

    const-string/jumbo v4, "Receiver acquired wakelock \'%s\' but releasing \'%s\'"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_2
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/o;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v2}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Ljava/lang/Object;)V

    .line 209
    throw v0
.end method

.method protected abstract onMessage(Landroid/content/Intent;)V
.end method

.method protected abstract onRegistered(Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Ljava/lang/String;)V
.end method
