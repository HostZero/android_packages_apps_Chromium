.class public final Lcom/google/ipc/invalidation/ticl/a/r;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private final c:Lcom/google/ipc/invalidation/ticl/a/u;

.field private final d:Lcom/google/ipc/invalidation/ticl/a/t;

.field private final e:Z

.field private final f:Lcom/google/ipc/invalidation/ticl/a/s;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/u;Lcom/google/ipc/invalidation/ticl/a/t;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/s;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 736
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 738
    const-string/jumbo v1, "version"

    invoke-static {v1, p1}, Lcom/google/ipc/invalidation/ticl/a/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 740
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    .line 741
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    .line 742
    if-eqz p4, :cond_8

    .line 743
    const/4 v0, 0x1

    .line 744
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->e:Z

    .line 748
    :goto_0
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    .line 749
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->a:J

    .line 750
    const/4 v0, 0x0

    .line 751
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    if-eqz v1, :cond_0

    .line 752
    const-string/jumbo v0, "network_status"

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    if-eqz v1, :cond_2

    .line 755
    if-eqz v0, :cond_1

    .line 756
    const-string/jumbo v1, "server_message"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_1
    const-string/jumbo v0, "server_message"

    .line 760
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/r;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 761
    if-eqz v0, :cond_3

    .line 762
    const-string/jumbo v1, "network_addr_change"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_3
    const-string/jumbo v0, "network_addr_change"

    .line 766
    :cond_4
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    if-eqz v1, :cond_6

    .line 767
    if-eqz v0, :cond_5

    .line 768
    const-string/jumbo v1, "create_client"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_5
    const-string/jumbo v0, "create_client"

    .line 772
    :cond_6
    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/a/r;->u()V

    .line 773
    :cond_7
    return-void

    .line 746
    :cond_8
    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->e:Z

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/s;)Lcom/google/ipc/invalidation/ticl/a/r;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 722
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/r;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/r;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/u;Lcom/google/ipc/invalidation/ticl/a/t;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/s;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/u;)Lcom/google/ipc/invalidation/ticl/a/r;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 707
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/r;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/r;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/u;Lcom/google/ipc/invalidation/ticl/a/t;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/s;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Z)Lcom/google/ipc/invalidation/ticl/a/r;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 717
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/r;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, p0

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/r;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/u;Lcom/google/ipc/invalidation/ticl/a/t;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/s;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/r;
    .locals 7

    .prologue
    .line 836
    :try_start_0
    new-instance v1, Lcom/google/a/a/a/r;

    invoke-direct {v1}, Lcom/google/a/a/a/r;-><init>()V

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/a/a/a/r;

    move-object v6, v0

    .line 1845
    if-nez v6, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1846
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/r;

    iget-object v2, v6, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v2

    iget-object v3, v6, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/u;->a(Lcom/google/a/a/a/u;)Lcom/google/ipc/invalidation/ticl/a/u;

    move-result-object v3

    iget-object v4, v6, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/t;->a(Lcom/google/a/a/a/t;)Lcom/google/ipc/invalidation/ticl/a/t;

    move-result-object v4

    iget-object v5, v6, Lcom/google/a/a/a/r;->d:Ljava/lang/Boolean;

    iget-object v6, v6, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    invoke-static {v6}, Lcom/google/ipc/invalidation/ticl/a/s;->a(Lcom/google/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/s;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/ipc/invalidation/ticl/a/r;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/u;Lcom/google/ipc/invalidation/ticl/a/t;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/s;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 837
    :catch_0
    move-exception v1

    .line 838
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 839
    :catch_1
    move-exception v1

    .line 840
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private g()Z
    .locals 4

    .prologue
    .line 782
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/r;->a:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/u;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 817
    const-string/jumbo v0, "<InternalDowncall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 818
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 819
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    if-eqz v0, :cond_0

    .line 820
    const-string/jumbo v0, " server_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    if-eqz v0, :cond_1

    .line 823
    const-string/jumbo v0, " network_status="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 825
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/r;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    const-string/jumbo v0, " network_addr_change="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 828
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    if-eqz v0, :cond_3

    .line 829
    const-string/jumbo v0, " create_client="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 831
    :cond_3
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 832
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 799
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 800
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 801
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    if-eqz v1, :cond_0

    .line 802
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/u;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    if-eqz v1, :cond_1

    .line 805
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/t;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 807
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/r;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 808
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->e:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/r;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 810
    :cond_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    if-eqz v1, :cond_3

    .line 811
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/s;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 813
    :cond_3
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/ticl/a/t;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->e:Z

    return v0
.end method

.method public final e()Lcom/google/ipc/invalidation/ticl/a/s;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 787
    if-ne p0, p1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 788
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/r;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 789
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/r;

    .line 790
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/r;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/r;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/r;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/r;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/r;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/r;->e:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/r;->e:Z

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final f()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 854
    .line 1858
    new-instance v2, Lcom/google/a/a/a/r;

    invoke-direct {v2}, Lcom/google/a/a/a/r;-><init>()V

    .line 1859
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->c()Lcom/google/a/a/a/a/J;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    .line 1860
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->c:Lcom/google/ipc/invalidation/ticl/a/u;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/u;->c()Lcom/google/a/a/a/u;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    .line 1861
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->d:Lcom/google/ipc/invalidation/ticl/a/t;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/t;->c()Lcom/google/a/a/a/t;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    .line 1862
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/r;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/r;->d:Ljava/lang/Boolean;

    .line 1863
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/r;->f:Lcom/google/ipc/invalidation/ticl/a/s;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/s;->f()Lcom/google/a/a/a/s;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    .line 854
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 1860
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1861
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1862
    goto :goto_2
.end method
