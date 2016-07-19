.class public Lorg/chromium/sync/notifier/InvalidationPreferences;
.super Ljava/lang/Object;
.source "InvalidationPreferences.java"


# static fields
.field private static final sCommitLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/notifier/InvalidationPreferences;->sCommitLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Unable to get application context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput-object v0, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/sync/notifier/InvalidationPreferences;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getObjectId(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 197
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 206
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->newInstance(I[B)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getObjectIdString(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->getName()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public commit(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Z
    .locals 3

    .prologue
    .line 102
    sget-object v1, Lorg/chromium/sync/notifier/InvalidationPreferences;->sCommitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    # getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v0, "InvalidationPreferences"

    const-string/jumbo v2, "Failed to commit invalidation preferences"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    monitor-exit v1

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public edit()Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;

    invoke-direct {v0, p0}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;-><init>(Lorg/chromium/sync/notifier/InvalidationPreferences;)V

    return-object v0
.end method

.method public getInternalNotificationClientState()[B
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 172
    const-string/jumbo v2, "sync_tango_internal_state"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    if-nez v1, :cond_0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getSavedObjectIds()Ljava/util/Set;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "tango_object_ids"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 129
    if-nez v2, :cond_0

    .line 139
    :goto_0
    return-object v0

    .line 132
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 133
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    invoke-direct {p0, v0}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getObjectId(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 139
    goto :goto_0
.end method

.method public getSavedSyncedAccount()Landroid/accounts/Account;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    const-string/jumbo v2, "sync_acct_name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    const-string/jumbo v3, "sync_acct_type"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSavedSyncedTypes()Ljava/util/Set;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "sync_tango_types"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setAccount(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 165
    # getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_acct_name"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    # getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_acct_type"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    return-void
.end method

.method public setInternalNotificationClientState(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;[B)V
    .locals 3

    .prologue
    .line 181
    # getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_tango_internal_state"

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    return-void
.end method

.method public setObjectIds(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 144
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "objectIds is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 146
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    .line 147
    invoke-direct {p0, v0}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getObjectIdString(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    # getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "tango_object_ids"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 150
    return-void
.end method

.method public setSyncTypes(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 119
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "syncTypes is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 121
    # getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "sync_tango_types"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 122
    return-void
.end method
