.class public final Lcom/google/ipc/invalidation/ticl/a/P;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/ad;

.field private final c:Lcom/google/ipc/invalidation/b/c;

.field private final d:Lcom/google/ipc/invalidation/ticl/a/ak;

.field private final e:J

.field private final f:J

.field private final g:Ljava/lang/String;

.field private final h:I


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ad;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 841
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 843
    const-string/jumbo v0, "protocol_version"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 844
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    .line 845
    if-eqz p2, :cond_0

    .line 846
    const/4 v0, 0x1

    .line 847
    const-string/jumbo v2, "client_token"

    invoke-static {v2, p2}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Ljava/lang/String;Lcom/google/ipc/invalidation/b/c;)V

    .line 848
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->c:Lcom/google/ipc/invalidation/b/c;

    .line 852
    :goto_0
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/P;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    .line 853
    const-string/jumbo v2, "client_time_ms"

    invoke-static {v2, p4}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 854
    const-string/jumbo v2, "client_time_ms"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/ipc/invalidation/ticl/a/P;->b(Ljava/lang/String;J)V

    .line 855
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->e:J

    .line 856
    const-string/jumbo v2, "max_known_server_time_ms"

    invoke-static {v2, p5}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 857
    const-string/jumbo v2, "max_known_server_time_ms"

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/ipc/invalidation/ticl/a/P;->b(Ljava/lang/String;J)V

    .line 858
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->f:J

    .line 859
    if-eqz p6, :cond_1

    .line 860
    or-int/lit8 v0, v0, 0x2

    .line 861
    const-string/jumbo v2, "message_id"

    invoke-static {v2, p6}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iput-object p6, p0, Lcom/google/ipc/invalidation/ticl/a/P;->g:Ljava/lang/String;

    .line 866
    :goto_1
    if-eqz p7, :cond_2

    .line 867
    or-int/lit8 v0, v0, 0x4

    .line 868
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->h:I

    .line 872
    :goto_2
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->a:J

    .line 873
    return-void

    .line 850
    :cond_0
    sget-object v0, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->c:Lcom/google/ipc/invalidation/b/c;

    move v0, v1

    goto :goto_0

    .line 864
    :cond_1
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->g:Ljava/lang/String;

    goto :goto_1

    .line 870
    :cond_2
    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->h:I

    goto :goto_2
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ad;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/ak;JJLjava/lang/String;Ljava/lang/Integer;)Lcom/google/ipc/invalidation/ticl/a/P;
    .locals 9

    .prologue
    .line 823
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/P;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/ipc/invalidation/ticl/a/P;-><init>(Lcom/google/ipc/invalidation/ticl/a/ad;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 887
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->a:J

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

.method private e()Z
    .locals 4

    .prologue
    .line 890
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->a:J

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
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 927
    const-string/jumbo v0, "<ClientHeader:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 928
    const-string/jumbo v0, " protocol_version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 929
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    const-string/jumbo v0, " client_token="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-eqz v0, :cond_1

    .line 933
    const-string/jumbo v0, " registration_summary="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 935
    :cond_1
    const-string/jumbo v0, " client_time_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 936
    const-string/jumbo v0, " max_known_server_time_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 937
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    const-string/jumbo v0, " message_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 940
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 941
    const-string/jumbo v0, " client_type="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->h:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 943
    :cond_3
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 944
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 878
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->a:J

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

.method protected final b()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 907
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->a:J

    .line 1214
    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 908
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ad;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 909
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 912
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-eqz v1, :cond_1

    .line 913
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ak;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 915
    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->e:J

    .line 2214
    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 915
    add-int/2addr v0, v1

    .line 916
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->f:J

    .line 3214
    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 916
    add-int/2addr v0, v1

    .line 917
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 918
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 920
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 921
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/P;->h:I

    add-int/2addr v0, v1

    .line 923
    :cond_3
    return v0
.end method

.method final c()Lcom/google/a/a/a/a/i;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 972
    new-instance v2, Lcom/google/a/a/a/a/i;

    invoke-direct {v2}, Lcom/google/a/a/a/a/i;-><init>()V

    .line 973
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ad;->c()Lcom/google/a/a/a/a/v;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/a/i;->a:Lcom/google/a/a/a/a/v;

    .line 974
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/i;->b:[B

    .line 975
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ak;->a()Lcom/google/a/a/a/a/C;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/a/i;->c:Lcom/google/a/a/a/a/C;

    .line 976
    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/P;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/a/i;->d:Ljava/lang/Long;

    .line 977
    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/P;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/a/i;->e:Ljava/lang/Long;

    .line 978
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->g:Ljava/lang/String;

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/a/i;->f:Ljava/lang/String;

    .line 979
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/P;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/a/i;->g:Ljava/lang/Integer;

    .line 980
    return-object v2

    :cond_1
    move-object v0, v1

    .line 974
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 975
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 978
    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 893
    if-ne p0, p1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return v0

    .line 894
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/P;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 895
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/P;

    .line 896
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/P;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/P;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/P;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/P;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->e:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/P;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->f:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/P;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/P;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/P;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/P;->h:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/P;->h:I

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
