.class final Lcom/google/ipc/invalidation/ticl/android2/c;
.super Ljava/lang/Object;
.source "AndroidInvalidationClientImpl.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/InvalidationListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->a:Landroid/content/Context;

    .line 78
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 79
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Dropping call to %s; could not parse ack handle data %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    return-void
.end method


# virtual methods
.method public final informError(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/ipc/invalidation/ticl/android2/a;->a(Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public final informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/customtabs/a;->convertToObjectIdProto(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v1

    .line 3211
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3212
    invoke-static {v1, p3, p4}, Lcom/google/ipc/invalidation/ticl/a/z;->a(Lcom/google/ipc/invalidation/ticl/a/aa;ZLjava/lang/String;)Lcom/google/ipc/invalidation/ticl/a/z;

    move-result-object v1

    .line 3214
    const-string/jumbo v3, "ipcinv-upcall"

    sget-object v4, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v4, v1}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/z;)Lcom/google/ipc/invalidation/ticl/a/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/v;->h()[B

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 138
    invoke-static {v0, v2}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public final informRegistrationStatus(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V
    .locals 4

    .prologue
    .line 129
    invoke-static {p2}, Landroid/support/customtabs/a;->convertToObjectIdProto(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v1

    sget-object v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->REGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    .line 3202
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3203
    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/ticl/a/A;->a(Lcom/google/ipc/invalidation/ticl/a/aa;Z)Lcom/google/ipc/invalidation/ticl/a/A;

    move-result-object v0

    .line 3204
    const-string/jumbo v1, "ipcinv-upcall"

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/A;)Lcom/google/ipc/invalidation/ticl/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->h()[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 133
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final invalidate(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/Invalidation;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 8

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/G;->a([B)Lcom/google/ipc/invalidation/ticl/a/G;

    move-result-object v6

    .line 94
    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->a:Landroid/content/Context;

    .line 2100
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    invoke-virtual {p2}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->getObjectId()Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/a;->convertToObjectIdProto(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v0

    .line 2107
    invoke-virtual {p2}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->getVersion()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->getIsTrickleRestartForInternalUse()Z

    move-result v5

    invoke-virtual {p2}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->getPayload()[B

    move-result-object v4

    .line 3087
    const/4 v1, 0x1

    invoke-static {v4}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Lcom/google/ipc/invalidation/ticl/a/aa;ZJLcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/Y;

    move-result-object v0

    .line 3175
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3176
    new-instance v2, Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v6}, Lcom/google/ipc/invalidation/ticl/a/G;->c()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    invoke-static {v2, v0}, Lcom/google/ipc/invalidation/ticl/a/x;->a(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/Y;)Lcom/google/ipc/invalidation/ticl/a/x;

    move-result-object v0

    .line 3178
    const-string/jumbo v2, "ipcinv-upcall"

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/x;)Lcom/google/ipc/invalidation/ticl/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->h()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 94
    invoke-static {v7, v1}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    const-string/jumbo v0, "invalidate"

    invoke-direct {p0, v0, p3}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    goto :goto_0
.end method

.method public final invalidateAll(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 5

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p2}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/G;->a([B)Lcom/google/ipc/invalidation/ticl/a/G;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->a:Landroid/content/Context;

    .line 3193
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3194
    new-instance v3, Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/G;->c()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/ticl/a/x;->a(Lcom/google/ipc/invalidation/b/c;Z)Lcom/google/ipc/invalidation/ticl/a/x;

    move-result-object v0

    .line 3196
    const-string/jumbo v3, "ipcinv-upcall"

    sget-object v4, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v4, v0}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/x;)Lcom/google/ipc/invalidation/ticl/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->h()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 119
    invoke-static {v1, v2}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    const-string/jumbo v0, "invalidateAll"

    invoke-direct {p0, v0, p2}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    goto :goto_0
.end method

.method public final invalidateUnknownVersion(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 5

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/G;->a([B)Lcom/google/ipc/invalidation/ticl/a/G;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/customtabs/a;->convertToObjectIdProto(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v2

    .line 3184
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3185
    new-instance v4, Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/G;->c()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    invoke-static {v4, v2}, Lcom/google/ipc/invalidation/ticl/a/x;->a(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/ticl/a/x;

    move-result-object v0

    .line 3187
    const-string/jumbo v2, "ipcinv-upcall"

    sget-object v4, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v4, v0}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/x;)Lcom/google/ipc/invalidation/ticl/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->h()[B

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 107
    invoke-static {v1, v3}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    const-string/jumbo v0, "invalidateUnknownVersion"

    invoke-direct {p0, v0, p3}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    goto :goto_0
.end method

.method public final ready(Lcom/google/ipc/invalidation/external/client/InvalidationClient;)V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->a:Landroid/content/Context;

    .line 1168
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1169
    const-string/jumbo v2, "ipcinv-upcall"

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    sget-object v4, Lcom/google/ipc/invalidation/ticl/a/y;->a:Lcom/google/ipc/invalidation/ticl/a/y;

    invoke-static {v3, v4}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;)Lcom/google/ipc/invalidation/ticl/a/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ipc/invalidation/ticl/a/v;->h()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 86
    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public final reissueRegistrations(Lcom/google/ipc/invalidation/external/client/InvalidationClient;[BI)V
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/c;->a:Landroid/content/Context;

    .line 3220
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3221
    new-instance v2, Lcom/google/ipc/invalidation/b/c;

    invoke-direct {v2, p2}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    invoke-static {v2, p3}, Lcom/google/ipc/invalidation/ticl/a/B;->a(Lcom/google/ipc/invalidation/b/c;I)Lcom/google/ipc/invalidation/ticl/a/B;

    move-result-object v2

    .line 3223
    const-string/jumbo v3, "ipcinv-upcall"

    sget-object v4, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v4, v2}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/B;)Lcom/google/ipc/invalidation/ticl/a/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/v;->h()[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 144
    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 145
    return-void
.end method
