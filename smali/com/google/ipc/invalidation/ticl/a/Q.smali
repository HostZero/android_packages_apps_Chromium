.class public final Lcom/google/ipc/invalidation/ticl/a/Q;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/P;

.field private final c:Lcom/google/ipc/invalidation/ticl/a/W;

.field private final d:Lcom/google/ipc/invalidation/ticl/a/af;

.field private final e:Lcom/google/ipc/invalidation/ticl/a/al;

.field private final f:Lcom/google/ipc/invalidation/ticl/a/X;

.field private final g:Lcom/google/ipc/invalidation/ticl/a/U;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/P;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/af;Lcom/google/ipc/invalidation/ticl/a/al;Lcom/google/ipc/invalidation/ticl/a/X;Lcom/google/ipc/invalidation/ticl/a/U;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1007
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1009
    const-string/jumbo v0, "header"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/Q;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->b:Lcom/google/ipc/invalidation/ticl/a/P;

    .line 1011
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->c:Lcom/google/ipc/invalidation/ticl/a/W;

    .line 1012
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->d:Lcom/google/ipc/invalidation/ticl/a/af;

    .line 1013
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->e:Lcom/google/ipc/invalidation/ticl/a/al;

    .line 1014
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->f:Lcom/google/ipc/invalidation/ticl/a/X;

    .line 1015
    if-eqz p6, :cond_0

    .line 1017
    iput-object p6, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    move v0, v1

    .line 1021
    :goto_0
    int-to-long v4, v0

    iput-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->a:J

    .line 1022
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/P;->a()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string/jumbo v1, "There should either be a client token or an initialization request"

    invoke-virtual {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/a/Q;->a(ZLjava/lang/String;)V

    .line 1024
    return-void

    .line 1019
    :cond_0
    sget-object v0, Lcom/google/ipc/invalidation/ticl/a/U;->a:Lcom/google/ipc/invalidation/ticl/a/U;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1022
    goto :goto_1
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/P;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/af;Lcom/google/ipc/invalidation/ticl/a/al;Lcom/google/ipc/invalidation/ticl/a/X;Lcom/google/ipc/invalidation/ticl/a/U;)Lcom/google/ipc/invalidation/ticl/a/Q;
    .locals 7

    .prologue
    .line 991
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/Q;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/a/Q;-><init>(Lcom/google/ipc/invalidation/ticl/a/P;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/af;Lcom/google/ipc/invalidation/ticl/a/al;Lcom/google/ipc/invalidation/ticl/a/X;Lcom/google/ipc/invalidation/ticl/a/U;)V

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 1037
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->a:J

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
    .locals 2

    .prologue
    .line 1074
    const-string/jumbo v0, "<ClientToServerMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1075
    const-string/jumbo v0, " header="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->b:Lcom/google/ipc/invalidation/ticl/a/P;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1076
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->c:Lcom/google/ipc/invalidation/ticl/a/W;

    if-eqz v0, :cond_0

    .line 1077
    const-string/jumbo v0, " initialize_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->c:Lcom/google/ipc/invalidation/ticl/a/W;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->d:Lcom/google/ipc/invalidation/ticl/a/af;

    if-eqz v0, :cond_1

    .line 1080
    const-string/jumbo v0, " registration_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->d:Lcom/google/ipc/invalidation/ticl/a/af;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->e:Lcom/google/ipc/invalidation/ticl/a/al;

    if-eqz v0, :cond_2

    .line 1083
    const-string/jumbo v0, " registration_sync_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->e:Lcom/google/ipc/invalidation/ticl/a/al;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->f:Lcom/google/ipc/invalidation/ticl/a/X;

    if-eqz v0, :cond_3

    .line 1086
    const-string/jumbo v0, " invalidation_ack_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->f:Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1088
    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1089
    const-string/jumbo v0, " info_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1091
    :cond_4
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1092
    return-void
.end method

.method public final a()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1115
    .line 2119
    new-instance v2, Lcom/google/a/a/a/a/j;

    invoke-direct {v2}, Lcom/google/a/a/a/a/j;-><init>()V

    .line 2120
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->b:Lcom/google/ipc/invalidation/ticl/a/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/P;->c()Lcom/google/a/a/a/a/i;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/a/j;->a:Lcom/google/a/a/a/a/i;

    .line 2121
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->c:Lcom/google/ipc/invalidation/ticl/a/W;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->c:Lcom/google/ipc/invalidation/ticl/a/W;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/W;->a()Lcom/google/a/a/a/a/p;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/j;->b:Lcom/google/a/a/a/a/p;

    .line 2122
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->d:Lcom/google/ipc/invalidation/ticl/a/af;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->d:Lcom/google/ipc/invalidation/ticl/a/af;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/af;->a()Lcom/google/a/a/a/a/x;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/a/j;->c:Lcom/google/a/a/a/a/x;

    .line 2123
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->e:Lcom/google/ipc/invalidation/ticl/a/al;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->e:Lcom/google/ipc/invalidation/ticl/a/al;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/al;->a()Lcom/google/a/a/a/a/D;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/a/j;->d:Lcom/google/a/a/a/a/D;

    .line 2124
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->f:Lcom/google/ipc/invalidation/ticl/a/X;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->f:Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/X;->d()Lcom/google/a/a/a/a/q;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/google/a/a/a/a/j;->e:Lcom/google/a/a/a/a/q;

    .line 2125
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/U;->a()Lcom/google/a/a/a/a/n;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/a/j;->f:Lcom/google/a/a/a/a/n;

    .line 1115
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 2121
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2122
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 2123
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 2124
    goto :goto_3
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 1053
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1054
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->b:Lcom/google/ipc/invalidation/ticl/a/P;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/P;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1055
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->c:Lcom/google/ipc/invalidation/ticl/a/W;

    if-eqz v1, :cond_0

    .line 1056
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->c:Lcom/google/ipc/invalidation/ticl/a/W;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/W;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->d:Lcom/google/ipc/invalidation/ticl/a/af;

    if-eqz v1, :cond_1

    .line 1059
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->d:Lcom/google/ipc/invalidation/ticl/a/af;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/af;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1061
    :cond_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->e:Lcom/google/ipc/invalidation/ticl/a/al;

    if-eqz v1, :cond_2

    .line 1062
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->e:Lcom/google/ipc/invalidation/ticl/a/al;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/al;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1064
    :cond_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->f:Lcom/google/ipc/invalidation/ticl/a/X;

    if-eqz v1, :cond_3

    .line 1065
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->f:Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/X;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1067
    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/Q;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1068
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/U;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1070
    :cond_4
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1040
    if-ne p0, p1, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return v0

    .line 1041
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/Q;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1042
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/Q;

    .line 1043
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/Q;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->b:Lcom/google/ipc/invalidation/ticl/a/P;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/Q;->b:Lcom/google/ipc/invalidation/ticl/a/P;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/Q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->c:Lcom/google/ipc/invalidation/ticl/a/W;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/Q;->c:Lcom/google/ipc/invalidation/ticl/a/W;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/Q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->d:Lcom/google/ipc/invalidation/ticl/a/af;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/Q;->d:Lcom/google/ipc/invalidation/ticl/a/af;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/Q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->e:Lcom/google/ipc/invalidation/ticl/a/al;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/Q;->e:Lcom/google/ipc/invalidation/ticl/a/al;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/Q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->f:Lcom/google/ipc/invalidation/ticl/a/X;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/Q;->f:Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/Q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/Q;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/Q;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/Q;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/Q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
