.class public final Lcom/google/ipc/invalidation/ticl/a/an;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/ad;

.field private final c:Lcom/google/ipc/invalidation/b/c;

.field private final d:Lcom/google/ipc/invalidation/ticl/a/ak;

.field private final e:J

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ad;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1699
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1700
    const/4 v0, 0x0

    .line 1701
    const-string/jumbo v1, "protocol_version"

    invoke-static {v1, p1}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1702
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    .line 1703
    const-string/jumbo v1, "client_token"

    invoke-static {v1, p2}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1704
    const-string/jumbo v1, "client_token"

    invoke-static {v1, p2}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Ljava/lang/String;Lcom/google/ipc/invalidation/b/c;)V

    .line 1705
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->c:Lcom/google/ipc/invalidation/b/c;

    .line 1706
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/an;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    .line 1707
    const-string/jumbo v1, "server_time_ms"

    invoke-static {v1, p4}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1708
    const-string/jumbo v1, "server_time_ms"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/ipc/invalidation/ticl/a/an;->b(Ljava/lang/String;J)V

    .line 1709
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->e:J

    .line 1710
    if-eqz p5, :cond_0

    .line 1711
    const/4 v0, 0x1

    .line 1712
    const-string/jumbo v1, "message_id"

    invoke-static {v1, p5}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/a/an;->f:Ljava/lang/String;

    .line 1717
    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/an;->a:J

    .line 1718
    return-void

    .line 1715
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/a/F;)Lcom/google/ipc/invalidation/ticl/a/an;
    .locals 6

    .prologue
    .line 1793
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1794
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/an;

    iget-object v1, p0, Lcom/google/a/a/a/a/F;->a:Lcom/google/a/a/a/a/v;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/ad;->a(Lcom/google/a/a/a/a/v;)Lcom/google/ipc/invalidation/ticl/a/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/a/F;->b:[B

    invoke-static {v2}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/a/a/a/F;->c:Lcom/google/a/a/a/a/C;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/ak;->a(Lcom/google/a/a/a/a/C;)Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v3

    iget-object v4, p0, Lcom/google/a/a/a/a/F;->d:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/a/a/a/a/F;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/an;-><init>(Lcom/google/ipc/invalidation/ticl/a/ad;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 1729
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->a:J

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
.method public final a()Lcom/google/ipc/invalidation/ticl/a/ad;
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/an;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 1769
    const-string/jumbo v0, "<ServerHeader:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1770
    const-string/jumbo v0, " protocol_version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1771
    const-string/jumbo v0, " client_token="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1772
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/an;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-eqz v0, :cond_0

    .line 1773
    const-string/jumbo v0, " registration_summary="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1775
    :cond_0
    const-string/jumbo v0, " server_time_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 1776
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/an;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1777
    const-string/jumbo v0, " message_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1779
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1780
    return-void
.end method

.method protected final b()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 1755
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/an;->a:J

    .line 2214
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1756
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ad;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1757
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1758
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-eqz v1, :cond_0

    .line 1759
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ak;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1761
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->e:J

    .line 3214
    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 1761
    add-int/2addr v0, v1

    .line 1762
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/an;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1763
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/an;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1765
    :cond_1
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/an;->c:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final d()Lcom/google/ipc/invalidation/ticl/a/ak;
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/an;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1726
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/an;->e:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1743
    if-ne p0, p1, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return v0

    .line 1744
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/an;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1745
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/an;

    .line 1746
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/an;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/an;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/an;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/an;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->e:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/an;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/an;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/an;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/an;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
