.class public final Lcom/google/ipc/invalidation/ticl/a/l;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/j;

.field private final b:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/j;Lcom/google/ipc/invalidation/b/c;)V
    .locals 1

    .prologue
    .line 2038
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 2039
    const-string/jumbo v0, "state"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2040
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/l;->a:Lcom/google/ipc/invalidation/ticl/a/j;

    .line 2041
    const-string/jumbo v0, "digest"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2042
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/l;->b:Lcom/google/ipc/invalidation/b/c;

    .line 2043
    return-void
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/j;Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/l;
    .locals 1

    .prologue
    .line 2031
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/l;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/ticl/a/l;-><init>(Lcom/google/ipc/invalidation/ticl/a/j;Lcom/google/ipc/invalidation/b/c;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/l;
    .locals 3

    .prologue
    .line 2073
    :try_start_0
    new-instance v0, Lcom/google/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/a/a/l;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/l;

    .line 3082
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3083
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/l;

    iget-object v2, v0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Lcom/google/a/a/a/j;)Lcom/google/ipc/invalidation/ticl/a/j;

    move-result-object v2

    iget-object v0, v0, Lcom/google/a/a/a/l;->b:[B

    invoke-static {v0}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ipc/invalidation/ticl/a/l;-><init>(Lcom/google/ipc/invalidation/ticl/a/j;Lcom/google/ipc/invalidation/b/c;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 2073
    goto :goto_0

    .line 2074
    :catch_0
    move-exception v0

    .line 2075
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2076
    :catch_1
    move-exception v0

    .line 2077
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/j;
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/l;->a:Lcom/google/ipc/invalidation/ticl/a/j;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 2065
    const-string/jumbo v0, "<AndroidTiclStateWithDigest:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 2066
    const-string/jumbo v0, " state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/l;->a:Lcom/google/ipc/invalidation/ticl/a/j;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 2067
    const-string/jumbo v0, " digest="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/l;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 2068
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2069
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/l;->a:Lcom/google/ipc/invalidation/ticl/a/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/j;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 2060
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/l;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2061
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/l;->b:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final d()[B
    .locals 2

    .prologue
    .line 2088
    .line 3092
    new-instance v0, Lcom/google/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/a/a/l;-><init>()V

    .line 3093
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/l;->a:Lcom/google/ipc/invalidation/ticl/a/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/j;->f()Lcom/google/a/a/a/j;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    .line 3094
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/l;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/l;->b:[B

    .line 2088
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2050
    if-ne p0, p1, :cond_1

    .line 2053
    :cond_0
    :goto_0
    return v0

    .line 2051
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/l;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2052
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/l;

    .line 2053
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/l;->a:Lcom/google/ipc/invalidation/ticl/a/j;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/l;->a:Lcom/google/ipc/invalidation/ticl/a/j;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/l;->b:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/l;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
