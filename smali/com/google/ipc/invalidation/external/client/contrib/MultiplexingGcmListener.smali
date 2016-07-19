.class public Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;
.super Lcom/google/android/a/a;
.source "MultiplexingGcmListener.java"


# static fields
.field private static final GCM_SENDER_IDS_METADATA_KEY:Ljava/lang/String; = "sender_ids"

.field private static final logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const-string/jumbo v0, "MplexGcmListener"

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forTag(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/a/a;-><init>()V

    .line 133
    return-void
.end method

.method static synthetic access$100()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-object v0
.end method

.method public static initializeGcm(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->a(Landroid/content/Context;I)V

    .line 1089
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1090
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1091
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Device must be at least API Level 8 (instead of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1094
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1096
    :try_start_0
    const-string/jumbo v1, "com.google.android.gsf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    invoke-static {p0}, Lcom/google/android/a/c;->a(Landroid/content/Context;)V

    .line 330
    invoke-static {p0}, Lcom/google/android/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    invoke-static {p0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->readSenderIdsFromManifestOrDie(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/a/c;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 334
    :cond_1
    return-object v0

    .line 1098
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Device does not have package com.google.android.gsf"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static readSenderIdsFromManifestOrDie(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 346
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 347
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Service has no metadata"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not read service info from manifest"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 349
    :cond_0
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "sender_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    if-nez v0, :cond_1

    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Service does not have the sender-ids metadata"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method private rebroadcast(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 313
    const-string/jumbo v0, "com.google.ipc.invalidation.gcmmplex.EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    return-void
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    invoke-static {p0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->readSenderIdsFromManifestOrDie(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDeletedMessages(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    const-string/jumbo v1, "com.google.ipc.invalidation.gcmmplex.DELETED_MSGS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    const-string/jumbo v1, "com.google.ipc.invalidation.gcmmplex.NUM_DELETED_MSGS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->rebroadcast(Landroid/content/Intent;)V

    .line 295
    return-void
.end method

.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 300
    sget-object v0, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "GCM error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    const-string/jumbo v1, "com.google.ipc.invalidation.gcmmplex.MESSAGE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 270
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->rebroadcast(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    const-string/jumbo v1, "com.google.ipc.invalidation.gcmmplex.REGISTERED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const-string/jumbo v1, "com.google.ipc.invalidation.gcmmplex.REGID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->rebroadcast(Landroid/content/Intent;)V

    .line 279
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    const-string/jumbo v1, "com.google.ipc.invalidation.gcmmplex.UNREGISTERED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    const-string/jumbo v1, "com.google.ipc.invalidation.gcmmplex.REGID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/MultiplexingGcmListener;->rebroadcast(Landroid/content/Intent;)V

    .line 287
    return-void
.end method
