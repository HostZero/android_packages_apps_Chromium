.class public final Lcom/google/ipc/invalidation/ticl/a/k;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:I

.field private final b:Lcom/google/ipc/invalidation/b/c;

.field private final c:J

.field private final d:Lcom/google/ipc/invalidation/ticl/a/N;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/N;)V
    .locals 2

    .prologue
    .line 1850
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1851
    const-string/jumbo v0, "client_type"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1852
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/k;->a:I

    .line 1853
    const-string/jumbo v0, "client_name"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1854
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/k;->b:Lcom/google/ipc/invalidation/b/c;

    .line 1855
    const-string/jumbo v0, "ticl_id"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1856
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/k;->c:J

    .line 1857
    const-string/jumbo v0, "client_config"

    invoke-static {v0, p4}, Lcom/google/ipc/invalidation/ticl/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1858
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/k;->d:Lcom/google/ipc/invalidation/ticl/a/N;

    .line 1859
    return-void
.end method

.method public static a(ILcom/google/ipc/invalidation/b/c;JLcom/google/ipc/invalidation/ticl/a/N;)Lcom/google/ipc/invalidation/ticl/a/k;
    .locals 4

    .prologue
    .line 1839
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/k;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p4}, Lcom/google/ipc/invalidation/ticl/a/k;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/N;)V

    return-object v0
.end method

.method static a(Lcom/google/a/a/a/k;)Lcom/google/ipc/invalidation/ticl/a/k;
    .locals 5

    .prologue
    .line 1908
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1909
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/k;

    iget-object v1, p0, Lcom/google/a/a/a/k;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/k;->b:[B

    invoke-static {v2}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/a/a/k;->c:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Lcom/google/a/a/a/a/h;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/a/k;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/N;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1861
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/k;->a:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 1889
    const-string/jumbo v0, "<Metadata:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1890
    const-string/jumbo v0, " client_type="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/k;->a:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 1891
    const-string/jumbo v0, " client_name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/k;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1892
    const-string/jumbo v0, " ticl_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/k;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 1893
    const-string/jumbo v0, " client_config="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/k;->d:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1894
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1895
    return-void
.end method

.method protected final b()I
    .locals 6

    .prologue
    .line 1881
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/k;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 1882
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/k;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1883
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/k;->c:J

    .line 3214
    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 1883
    add-int/2addr v0, v1

    .line 1884
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/k;->d:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1885
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/k;->b:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 1865
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/k;->c:J

    return-wide v0
.end method

.method public final e()Lcom/google/ipc/invalidation/ticl/a/N;
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/k;->d:Lcom/google/ipc/invalidation/ticl/a/N;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1870
    if-ne p0, p1, :cond_1

    .line 1873
    :cond_0
    :goto_0
    return v0

    .line 1871
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/k;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1872
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/k;

    .line 1873
    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/k;->a:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/k;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/k;->b:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/k;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/k;->c:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/k;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/k;->d:Lcom/google/ipc/invalidation/ticl/a/N;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/k;->d:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final f()Lcom/google/a/a/a/k;
    .locals 4

    .prologue
    .line 1920
    new-instance v0, Lcom/google/a/a/a/k;

    invoke-direct {v0}, Lcom/google/a/a/a/k;-><init>()V

    .line 1921
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/k;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/k;->a:Ljava/lang/Integer;

    .line 1922
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/k;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/k;->b:[B

    .line 1923
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/k;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/k;->c:Ljava/lang/Long;

    .line 1924
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/k;->d:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->n()Lcom/google/a/a/a/a/h;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    .line 1925
    return-object v0
.end method
