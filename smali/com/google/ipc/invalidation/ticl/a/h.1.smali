.class public final Lcom/google/ipc/invalidation/ticl/a/h;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private final b:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/b/c;)V
    .locals 1

    .prologue
    .line 1772
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1773
    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1774
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/h;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 1775
    const-string/jumbo v0, "message"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1776
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/h;->b:Lcom/google/ipc/invalidation/b/c;

    .line 1777
    return-void
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/h;
    .locals 1

    .prologue
    .line 1765
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/h;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/ticl/a/h;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/b/c;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/h;
    .locals 3

    .prologue
    .line 1807
    :try_start_0
    new-instance v0, Lcom/google/a/a/a/h;

    invoke-direct {v0}, Lcom/google/a/a/a/h;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/h;

    .line 2816
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2817
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/h;

    iget-object v2, v0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v2

    iget-object v0, v0, Lcom/google/a/a/a/h;->b:[B

    invoke-static {v0}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ipc/invalidation/ticl/a/h;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/b/c;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 1807
    goto :goto_0

    .line 1808
    :catch_0
    move-exception v0

    .line 1809
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1810
    :catch_1
    move-exception v0

    .line 1811
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/h;->b:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1799
    const-string/jumbo v0, "<AndroidNetworkSendRequest:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1800
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/h;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1801
    const-string/jumbo v0, " message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/h;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1802
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1803
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/h;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1794
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/h;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1795
    return v0
.end method

.method public final c()[B
    .locals 2

    .prologue
    .line 1822
    .line 2826
    new-instance v0, Lcom/google/a/a/a/h;

    invoke-direct {v0}, Lcom/google/a/a/a/h;-><init>()V

    .line 2827
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/h;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->c()Lcom/google/a/a/a/a/J;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    .line 2828
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/h;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/h;->b:[B

    .line 1822
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1784
    if-ne p0, p1, :cond_1

    .line 1787
    :cond_0
    :goto_0
    return v0

    .line 1785
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/h;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1786
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/h;

    .line 1787
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/h;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/h;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/h;->b:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/h;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
