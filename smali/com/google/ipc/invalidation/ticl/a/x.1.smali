.class public final Lcom/google/ipc/invalidation/ticl/a/x;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/b/c;

.field private final c:Lcom/google/ipc/invalidation/ticl/a/Y;

.field private final d:Lcom/google/ipc/invalidation/ticl/a/aa;

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/Y;Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 947
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 949
    const-string/jumbo v1, "ack_handle"

    invoke-static {v1, p1}, Lcom/google/ipc/invalidation/ticl/a/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 950
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->b:Lcom/google/ipc/invalidation/b/c;

    .line 951
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    .line 952
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 953
    if-eqz p4, :cond_6

    .line 954
    const/4 v0, 0x1

    .line 955
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->e:Z

    .line 959
    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->a:J

    .line 960
    const/4 v0, 0x0

    .line 961
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/x;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    const-string/jumbo v0, "invalidate_all"

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    if-eqz v1, :cond_2

    .line 965
    if-eqz v0, :cond_1

    .line 966
    const-string/jumbo v1, "invalidate_unknown"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_1
    const-string/jumbo v0, "invalidate_unknown"

    .line 970
    :cond_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    if-eqz v1, :cond_4

    .line 971
    if-eqz v0, :cond_3

    .line 972
    const-string/jumbo v1, "invalidation"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_3
    const-string/jumbo v0, "invalidation"

    .line 976
    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/a/x;->u()V

    .line 977
    :cond_5
    return-void

    .line 957
    :cond_6
    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->e:Z

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/x;)Lcom/google/ipc/invalidation/ticl/a/x;
    .locals 5

    .prologue
    .line 1040
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1041
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/x;

    iget-object v1, p0, Lcom/google/a/a/a/x;->a:[B

    invoke-static {v1}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Lcom/google/a/a/a/a/r;)Lcom/google/ipc/invalidation/ticl/a/Y;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    iget-object v4, p0, Lcom/google/a/a/a/x;->d:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/a/x;-><init>(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/Y;Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/Y;)Lcom/google/ipc/invalidation/ticl/a/x;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 925
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/x;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/x;-><init>(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/Y;Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/ticl/a/x;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 930
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/x;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/google/ipc/invalidation/ticl/a/x;-><init>(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/Y;Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/b/c;Z)Lcom/google/ipc/invalidation/ticl/a/x;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 935
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/x;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/google/ipc/invalidation/ticl/a/x;-><init>(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/Y;Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->b:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1015
    const-string/jumbo v0, "<InvalidateUpcall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1016
    const-string/jumbo v0, " ack_handle="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1017
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    if-eqz v0, :cond_0

    .line 1018
    const-string/jumbo v0, " invalidation="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    if-eqz v0, :cond_1

    .line 1021
    const-string/jumbo v0, " invalidate_unknown="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1023
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    const-string/jumbo v0, " invalidate_all="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 1026
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1027
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 1000
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1001
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1002
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    if-eqz v1, :cond_0

    .line 1003
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/Y;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    if-eqz v1, :cond_1

    .line 1006
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/x;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/x;->e:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/x;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1011
    :cond_2
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/ticl/a/Y;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    return-object v0
.end method

.method public final d()Lcom/google/ipc/invalidation/ticl/a/aa;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    return-object v0
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 986
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/x;->a:J

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 989
    if-ne p0, p1, :cond_1

    .line 992
    :cond_0
    :goto_0
    return v0

    .line 990
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/x;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 991
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/x;

    .line 992
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/x;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/x;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/x;->b:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/x;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/x;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/x;->e:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/x;->e:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final f()Lcom/google/a/a/a/x;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1052
    new-instance v2, Lcom/google/a/a/a/x;

    invoke-direct {v2}, Lcom/google/a/a/a/x;-><init>()V

    .line 1053
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/x;->a:[B

    .line 1054
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->c:Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->i()Lcom/google/a/a/a/a/r;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    .line 1055
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->d:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    .line 1056
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/x;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/x;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/x;->d:Ljava/lang/Boolean;

    .line 1057
    return-object v2

    :cond_1
    move-object v0, v1

    .line 1054
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1055
    goto :goto_1
.end method
