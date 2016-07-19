.class public final Lcom/google/ipc/invalidation/ticl/android2/e;
.super Ljava/lang/Object;
.source "AndroidInvalidationListenerIntentMapper.java"


# instance fields
.field public final a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

.field private final b:Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

.field private final c:Lcom/google/ipc/invalidation/external/client/InvalidationListener;


# direct methods
.method public constructor <init>(Lcom/google/ipc/invalidation/external/client/InvalidationListener;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forPrefix(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->b:Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    .line 63
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/d;

    invoke-direct {v0, p2}, Lcom/google/ipc/invalidation/ticl/android2/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    .line 64
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->c:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    .line 65
    return-void
.end method

.method private b(Landroid/content/Intent;)Lcom/google/ipc/invalidation/ticl/a/v;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 138
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    const-string/jumbo v1, "ipcinv-upcall"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/v;->a([B)Lcom/google/ipc/invalidation/ticl/a/v;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->b:Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    const-string/jumbo v3, "Could not parse listener upcall from %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/ticl/android2/e;->b(Landroid/content/Intent;)Lcom/google/ipc/invalidation/ticl/a/v;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->c:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    invoke-interface {v0, v1}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->ready(Lcom/google/ipc/invalidation/external/client/InvalidationClient;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->c()Lcom/google/ipc/invalidation/ticl/a/x;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 85
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->c()Lcom/google/ipc/invalidation/ticl/a/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->c:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    .line 1117
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/x;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->newInstance([B)Lcom/google/ipc/invalidation/external/client/types/AckHandle;

    move-result-object v2

    .line 1118
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/x;->c()Lcom/google/ipc/invalidation/ticl/a/Y;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1119
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/x;->c()Lcom/google/ipc/invalidation/ticl/a/Y;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/a;->convertFromInvalidationProto(Lcom/google/ipc/invalidation/ticl/a/Y;)Lcom/google/ipc/invalidation/external/client/types/Invalidation;

    move-result-object v0

    invoke-interface {v1, v3, v0, v2}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->invalidate(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/Invalidation;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    goto :goto_0

    .line 1122
    :cond_2
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/x;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1123
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    invoke-interface {v1, v0, v2}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->invalidateAll(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    goto :goto_0

    .line 1124
    :cond_3
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/x;->d()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1125
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/x;->d()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/a;->convertFromObjectIdProto(Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    invoke-interface {v1, v3, v0, v2}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->invalidateUnknownVersion(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    goto :goto_0

    .line 1129
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid invalidate upcall: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_5
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->d()Lcom/google/ipc/invalidation/ticl/a/A;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 87
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->d()Lcom/google/ipc/invalidation/ticl/a/A;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->c:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/A;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    invoke-static {v3}, Landroid/support/customtabs/a;->convertFromObjectIdProto(Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/A;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->REGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    :goto_1
    invoke-interface {v1, v2, v3, v0}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informRegistrationStatus(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->UNREGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    goto :goto_1

    .line 92
    :cond_7
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->e()Lcom/google/ipc/invalidation/ticl/a/z;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 93
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->e()Lcom/google/ipc/invalidation/ticl/a/z;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->c:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/z;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    invoke-static {v3}, Landroid/support/customtabs/a;->convertFromObjectIdProto(Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/z;->c()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_8
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->f()Lcom/google/ipc/invalidation/ticl/a/B;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 99
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->f()Lcom/google/ipc/invalidation/ticl/a/B;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->c:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/B;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/B;->c()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->reissueRegistrations(Lcom/google/ipc/invalidation/external/client/InvalidationClient;[BI)V

    goto/16 :goto_0

    .line 102
    :cond_9
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->g()Lcom/google/ipc/invalidation/ticl/a/w;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 103
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/v;->g()Lcom/google/ipc/invalidation/ticl/a/w;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/w;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/w;->d()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/w;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->newInstance(IZLjava/lang/String;Lcom/google/ipc/invalidation/external/client/types/ErrorContext;)Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->c:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    invoke-interface {v1, v2, v0}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informError(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V

    goto/16 :goto_0

    .line 108
    :cond_a
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/e;->b:Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    const-string/jumbo v2, "Dropping listener Intent with unknown call: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
