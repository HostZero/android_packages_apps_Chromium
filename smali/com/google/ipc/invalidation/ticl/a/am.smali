.class public final Lcom/google/ipc/invalidation/ticl/a/am;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2260
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/am;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/a/am;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/am;->a:Lcom/google/ipc/invalidation/ticl/a/am;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2263
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 2264
    return-void
.end method

.method static a(Lcom/google/a/a/a/a/E;)Lcom/google/ipc/invalidation/ticl/a/am;
    .locals 1

    .prologue
    .line 2295
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2296
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/am;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/a/am;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 1

    .prologue
    .line 2280
    const-string/jumbo v0, "<RegistrationSyncRequestMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 2281
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2282
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 2276
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2268
    if-ne p0, p1, :cond_1

    .line 2271
    :cond_0
    :goto_0
    return v0

    .line 2269
    :cond_1
    instance-of v1, p1, Lcom/google/ipc/invalidation/ticl/a/am;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
