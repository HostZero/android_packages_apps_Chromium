.class public final Lcom/google/ipc/invalidation/ticl/a/G;
.super Lcom/google/ipc/invalidation/b/n;
.source "Client.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/G;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/G;-><init>(Lcom/google/ipc/invalidation/ticl/a/Y;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/Y;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    .line 44
    return-void
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/Y;)Lcom/google/ipc/invalidation/ticl/a/G;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/G;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/a/G;-><init>(Lcom/google/ipc/invalidation/ticl/a/Y;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/G;
    .locals 2

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Lcom/google/a/a/a/a/b;

    invoke-direct {v0}, Lcom/google/a/a/a/a/b;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/a/b;

    .line 1082
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1083
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/G;

    iget-object v0, v0, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Lcom/google/a/a/a/a/r;)Lcom/google/ipc/invalidation/ticl/a/Y;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/ticl/a/G;-><init>(Lcom/google/ipc/invalidation/ticl/a/Y;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catch_1
    move-exception v0

    .line 77
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/Y;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "<AckHandleP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 65
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v0, " invalidation="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 68
    :cond_0
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 69
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x1

    .line 57
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 60
    :cond_0
    return v0
.end method

.method public final c()[B
    .locals 2

    .prologue
    .line 87
    .line 1091
    new-instance v1, Lcom/google/a/a/a/a/b;

    invoke-direct {v1}, Lcom/google/a/a/a/a/b;-><init>()V

    .line 1092
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->i()Lcom/google/a/a/a/a/r;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    .line 87
    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    .line 1092
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 49
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 50
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/ticl/a/G;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/G;

    .line 52
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    iget-object v1, p1, Lcom/google/ipc/invalidation/ticl/a/G;->a:Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/G;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
