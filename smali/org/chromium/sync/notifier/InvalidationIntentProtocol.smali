.class public Lorg/chromium/sync/notifier/InvalidationIntentProtocol;
.super Ljava/lang/Object;
.source "InvalidationIntentProtocol.java"


# static fields
.field public static final ACTION_REGISTER:Ljava/lang/String; = "org.chromium.sync.notifier.ACTION_REGISTER_TYPES"

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_REGISTERED_OBJECT_NAMES:Ljava/lang/String; = "registered_object_names"

.field public static final EXTRA_REGISTERED_OBJECT_SOURCES:Ljava/lang/String; = "registered_object_sources"

.field public static final EXTRA_REGISTERED_TYPES:Ljava/lang/String; = "registered_types"

.field public static final EXTRA_STOP:Ljava/lang/String; = "stop"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method public static createRegisterIntent(Landroid/accounts/Account;Ljava/util/Set;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 63
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "org.chromium.sync.notifier.ACTION_REGISTER_TYPES"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/sync/ModelTypeHelper;->toNotificationType(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move v1, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const-string/jumbo v0, "registered_types"

    invoke-static {v4}, Lorg/chromium/base/CollectionUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v0, "account"

    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    return-object v3
.end method

.method public static createRegisterIntent(Landroid/accounts/Account;[I[Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 83
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "objectSources and objectNames must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 92
    aget v3, p1, v0

    const/16 v4, 0x3ec

    if-eq v3, v4, :cond_1

    .line 93
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "org.chromium.sync.notifier.ACTION_REGISTER_TYPES"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v3, "registered_object_sources"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "registered_object_names"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    return-object v0
.end method

.method public static getRegisteredObjectIds(Landroid/content/Intent;)Ljava/util/Set;
    .locals 6

    .prologue
    .line 118
    const-string/jumbo v0, "registered_object_sources"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 120
    const-string/jumbo v0, "registered_object_names"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 122
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    .line 126
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 127
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 128
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->newInstance(I[B)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 131
    goto :goto_0
.end method

.method public static isRegisteredTypesChange(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "registered_types"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "registered_object_sources"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStop(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v0, "stop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
