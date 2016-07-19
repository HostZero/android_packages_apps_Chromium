.class public final Lcom/google/ipc/invalidation/ticl/a/ao;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/an;

.field private final c:Lcom/google/ipc/invalidation/ticl/a/aq;

.field private final d:Lcom/google/ipc/invalidation/ticl/a/X;

.field private final e:Lcom/google/ipc/invalidation/ticl/a/ai;

.field private final f:Lcom/google/ipc/invalidation/ticl/a/am;

.field private final g:Lcom/google/ipc/invalidation/ticl/a/S;

.field private final h:Lcom/google/ipc/invalidation/ticl/a/V;

.field private final i:Lcom/google/ipc/invalidation/ticl/a/T;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/an;Lcom/google/ipc/invalidation/ticl/a/aq;Lcom/google/ipc/invalidation/ticl/a/X;Lcom/google/ipc/invalidation/ticl/a/ai;Lcom/google/ipc/invalidation/ticl/a/am;Lcom/google/ipc/invalidation/ticl/a/S;Lcom/google/ipc/invalidation/ticl/a/V;Lcom/google/ipc/invalidation/ticl/a/T;)V
    .locals 2

    .prologue
    .line 1862
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1863
    const/4 v0, 0x0

    .line 1864
    const-string/jumbo v1, "header"

    invoke-static {v1, p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1865
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->b:Lcom/google/ipc/invalidation/ticl/a/an;

    .line 1866
    if-eqz p2, :cond_0

    .line 1867
    const/4 v0, 0x1

    .line 1868
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->c:Lcom/google/ipc/invalidation/ticl/a/aq;

    .line 1872
    :goto_0
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->d:Lcom/google/ipc/invalidation/ticl/a/X;

    .line 1873
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->e:Lcom/google/ipc/invalidation/ticl/a/ai;

    .line 1874
    if-eqz p5, :cond_1

    .line 1875
    or-int/lit8 v0, v0, 0x2

    .line 1876
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->f:Lcom/google/ipc/invalidation/ticl/a/am;

    .line 1880
    :goto_1
    if-eqz p6, :cond_2

    .line 1881
    or-int/lit8 v0, v0, 0x4

    .line 1882
    iput-object p6, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->g:Lcom/google/ipc/invalidation/ticl/a/S;

    .line 1886
    :goto_2
    iput-object p7, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->h:Lcom/google/ipc/invalidation/ticl/a/V;

    .line 1887
    iput-object p8, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->i:Lcom/google/ipc/invalidation/ticl/a/T;

    .line 1888
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->a:J

    .line 1889
    return-void

    .line 1870
    :cond_0
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/aq;->a:Lcom/google/ipc/invalidation/ticl/a/aq;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->c:Lcom/google/ipc/invalidation/ticl/a/aq;

    goto :goto_0

    .line 1878
    :cond_1
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/am;->a:Lcom/google/ipc/invalidation/ticl/a/am;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->f:Lcom/google/ipc/invalidation/ticl/a/am;

    goto :goto_1

    .line 1884
    :cond_2
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/S;->a:Lcom/google/ipc/invalidation/ticl/a/S;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->g:Lcom/google/ipc/invalidation/ticl/a/S;

    goto :goto_2
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/ao;
    .locals 10

    .prologue
    .line 2007
    :try_start_0
    new-instance v1, Lcom/google/a/a/a/a/G;

    invoke-direct {v1}, Lcom/google/a/a/a/a/G;-><init>()V

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/a/a/a/a/G;

    move-object v9, v0

    .line 3016
    if-nez v9, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 3017
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/ao;

    iget-object v2, v9, Lcom/google/a/a/a/a/G;->a:Lcom/google/a/a/a/a/F;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/an;->a(Lcom/google/a/a/a/a/F;)Lcom/google/ipc/invalidation/ticl/a/an;

    move-result-object v2

    iget-object v3, v9, Lcom/google/a/a/a/a/G;->b:Lcom/google/a/a/a/a/I;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/aq;->a(Lcom/google/a/a/a/a/I;)Lcom/google/ipc/invalidation/ticl/a/aq;

    move-result-object v3

    iget-object v4, v9, Lcom/google/a/a/a/a/G;->c:Lcom/google/a/a/a/a/q;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/X;->a(Lcom/google/a/a/a/a/q;)Lcom/google/ipc/invalidation/ticl/a/X;

    move-result-object v4

    iget-object v5, v9, Lcom/google/a/a/a/a/G;->d:Lcom/google/a/a/a/a/A;

    invoke-static {v5}, Lcom/google/ipc/invalidation/ticl/a/ai;->a(Lcom/google/a/a/a/a/A;)Lcom/google/ipc/invalidation/ticl/a/ai;

    move-result-object v5

    iget-object v6, v9, Lcom/google/a/a/a/a/G;->e:Lcom/google/a/a/a/a/E;

    invoke-static {v6}, Lcom/google/ipc/invalidation/ticl/a/am;->a(Lcom/google/a/a/a/a/E;)Lcom/google/ipc/invalidation/ticl/a/am;

    move-result-object v6

    iget-object v7, v9, Lcom/google/a/a/a/a/G;->f:Lcom/google/a/a/a/a/l;

    invoke-static {v7}, Lcom/google/ipc/invalidation/ticl/a/S;->a(Lcom/google/a/a/a/a/l;)Lcom/google/ipc/invalidation/ticl/a/S;

    move-result-object v7

    iget-object v8, v9, Lcom/google/a/a/a/a/G;->g:Lcom/google/a/a/a/a/o;

    invoke-static {v8}, Lcom/google/ipc/invalidation/ticl/a/V;->a(Lcom/google/a/a/a/a/o;)Lcom/google/ipc/invalidation/ticl/a/V;

    move-result-object v8

    iget-object v9, v9, Lcom/google/a/a/a/a/G;->h:Lcom/google/a/a/a/a/m;

    invoke-static {v9}, Lcom/google/ipc/invalidation/ticl/a/T;->a(Lcom/google/a/a/a/a/m;)Lcom/google/ipc/invalidation/ticl/a/T;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/google/ipc/invalidation/ticl/a/ao;-><init>(Lcom/google/ipc/invalidation/ticl/a/an;Lcom/google/ipc/invalidation/ticl/a/aq;Lcom/google/ipc/invalidation/ticl/a/X;Lcom/google/ipc/invalidation/ticl/a/ai;Lcom/google/ipc/invalidation/ticl/a/am;Lcom/google/ipc/invalidation/ticl/a/S;Lcom/google/ipc/invalidation/ticl/a/V;Lcom/google/ipc/invalidation/ticl/a/T;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2008
    :catch_0
    move-exception v1

    .line 2009
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2010
    :catch_1
    move-exception v1

    .line 2011
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/an;
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->b:Lcom/google/ipc/invalidation/ticl/a/an;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1979
    const-string/jumbo v0, "<ServerToClientMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1980
    const-string/jumbo v0, " header="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->b:Lcom/google/ipc/invalidation/ticl/a/an;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1981
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/ao;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    const-string/jumbo v0, " token_control_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->c:Lcom/google/ipc/invalidation/ticl/a/aq;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->d:Lcom/google/ipc/invalidation/ticl/a/X;

    if-eqz v0, :cond_1

    .line 1985
    const-string/jumbo v0, " invalidation_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->d:Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1987
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->e:Lcom/google/ipc/invalidation/ticl/a/ai;

    if-eqz v0, :cond_2

    .line 1988
    const-string/jumbo v0, " registration_status_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->e:Lcom/google/ipc/invalidation/ticl/a/ai;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1990
    :cond_2
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/ao;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1991
    const-string/jumbo v0, " registration_sync_request_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->f:Lcom/google/ipc/invalidation/ticl/a/am;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1993
    :cond_3
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/ao;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1994
    const-string/jumbo v0, " config_change_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->g:Lcom/google/ipc/invalidation/ticl/a/S;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1996
    :cond_4
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->h:Lcom/google/ipc/invalidation/ticl/a/V;

    if-eqz v0, :cond_5

    .line 1997
    const-string/jumbo v0, " info_request_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->h:Lcom/google/ipc/invalidation/ticl/a/V;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1999
    :cond_5
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->i:Lcom/google/ipc/invalidation/ticl/a/T;

    if-eqz v0, :cond_6

    .line 2000
    const-string/jumbo v0, " error_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->i:Lcom/google/ipc/invalidation/ticl/a/T;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 2002
    :cond_6
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2003
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 1952
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->a:J

    .line 2214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1953
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->b:Lcom/google/ipc/invalidation/ticl/a/an;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/an;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1954
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/ao;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1955
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->c:Lcom/google/ipc/invalidation/ticl/a/aq;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aq;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1957
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->d:Lcom/google/ipc/invalidation/ticl/a/X;

    if-eqz v1, :cond_1

    .line 1958
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->d:Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/X;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1960
    :cond_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->e:Lcom/google/ipc/invalidation/ticl/a/ai;

    if-eqz v1, :cond_2

    .line 1961
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->e:Lcom/google/ipc/invalidation/ticl/a/ai;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ai;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1963
    :cond_2
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/ao;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1964
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->f:Lcom/google/ipc/invalidation/ticl/a/am;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/am;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1966
    :cond_3
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/ao;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1967
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->g:Lcom/google/ipc/invalidation/ticl/a/S;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/S;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1969
    :cond_4
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->h:Lcom/google/ipc/invalidation/ticl/a/V;

    if-eqz v1, :cond_5

    .line 1970
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->h:Lcom/google/ipc/invalidation/ticl/a/V;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/V;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1972
    :cond_5
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->i:Lcom/google/ipc/invalidation/ticl/a/T;

    if-eqz v1, :cond_6

    .line 1973
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->i:Lcom/google/ipc/invalidation/ticl/a/T;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/T;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1975
    :cond_6
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/ticl/a/aq;
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->c:Lcom/google/ipc/invalidation/ticl/a/aq;

    return-object v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 1894
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->a:J

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

.method public final e()Lcom/google/ipc/invalidation/ticl/a/X;
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->d:Lcom/google/ipc/invalidation/ticl/a/X;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1937
    if-ne p0, p1, :cond_1

    .line 1940
    :cond_0
    :goto_0
    return v0

    .line 1938
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ao;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1939
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ao;

    .line 1940
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/ao;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->b:Lcom/google/ipc/invalidation/ticl/a/an;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ao;->b:Lcom/google/ipc/invalidation/ticl/a/an;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ao;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/ao;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->c:Lcom/google/ipc/invalidation/ticl/a/aq;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ao;->c:Lcom/google/ipc/invalidation/ticl/a/aq;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ao;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->d:Lcom/google/ipc/invalidation/ticl/a/X;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ao;->d:Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ao;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->e:Lcom/google/ipc/invalidation/ticl/a/ai;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ao;->e:Lcom/google/ipc/invalidation/ticl/a/ai;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ao;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/ao;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->f:Lcom/google/ipc/invalidation/ticl/a/am;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ao;->f:Lcom/google/ipc/invalidation/ticl/a/am;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ao;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/ao;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->g:Lcom/google/ipc/invalidation/ticl/a/S;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ao;->g:Lcom/google/ipc/invalidation/ticl/a/S;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ao;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->h:Lcom/google/ipc/invalidation/ticl/a/V;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ao;->h:Lcom/google/ipc/invalidation/ticl/a/V;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ao;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->i:Lcom/google/ipc/invalidation/ticl/a/T;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ao;->i:Lcom/google/ipc/invalidation/ticl/a/T;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ao;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final f()Lcom/google/ipc/invalidation/ticl/a/ai;
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->e:Lcom/google/ipc/invalidation/ticl/a/ai;

    return-object v0
.end method

.method public final g()Lcom/google/ipc/invalidation/ticl/a/am;
    .locals 1

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->f:Lcom/google/ipc/invalidation/ticl/a/am;

    return-object v0
.end method

.method public final h()Z
    .locals 4

    .prologue
    .line 1901
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->a:J

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

.method public final i()Lcom/google/ipc/invalidation/ticl/a/S;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->g:Lcom/google/ipc/invalidation/ticl/a/S;

    return-object v0
.end method

.method public final j()Z
    .locals 4

    .prologue
    .line 1904
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->a:J

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

.method public final k()Lcom/google/ipc/invalidation/ticl/a/V;
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->h:Lcom/google/ipc/invalidation/ticl/a/V;

    return-object v0
.end method

.method public final l()Lcom/google/ipc/invalidation/ticl/a/T;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ao;->i:Lcom/google/ipc/invalidation/ticl/a/T;

    return-object v0
.end method
