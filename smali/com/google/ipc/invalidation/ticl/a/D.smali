.class public final Lcom/google/ipc/invalidation/ticl/a/D;
.super Lcom/google/ipc/invalidation/b/n;
.source "ChannelCommon.java"


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Lcom/google/ipc/invalidation/b/c;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/D;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/D;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 115
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->b:I

    .line 121
    :goto_0
    if-eqz p2, :cond_1

    .line 122
    or-int/lit8 v0, v0, 0x2

    .line 123
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->c:Lcom/google/ipc/invalidation/b/c;

    .line 127
    :goto_1
    if-eqz p3, :cond_2

    .line 128
    or-int/lit8 v0, v0, 0x4

    .line 129
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/D;->d:Z

    .line 133
    :goto_2
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/D;->a:J

    .line 134
    return-void

    .line 119
    :cond_0
    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/D;->b:I

    move v0, v1

    goto :goto_0

    .line 125
    :cond_1
    sget-object v2, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->c:Lcom/google/ipc/invalidation/b/c;

    goto :goto_1

    .line 131
    :cond_2
    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/D;->d:Z

    goto :goto_2
.end method

.method public static a(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/D;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/ipc/invalidation/ticl/a/D;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 137
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->a:J

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

.method private d()Z
    .locals 4

    .prologue
    .line 140
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->a:J

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
    .line 143
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->a:J

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
    .line 170
    const-string/jumbo v0, "<NetworkEndpointId:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 171
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string/jumbo v0, " network_address="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/D;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string/jumbo v0, " client_address="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/D;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const-string/jumbo v0, " is_offline="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/D;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 180
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 181
    return-void
.end method

.method public final a()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 201
    .line 2205
    new-instance v2, Lcom/google/a/a/a/a/a;

    invoke-direct {v2}, Lcom/google/a/a/a/a/a;-><init>()V

    .line 2206
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/D;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/a;->a:Ljava/lang/Integer;

    .line 2207
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/D;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/a/a;->b:[B

    .line 2208
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/D;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/a/a;->c:Ljava/lang/Boolean;

    .line 201
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 2206
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2207
    goto :goto_1
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/D;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 157
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/D;->b:I

    add-int/2addr v0, v1

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/D;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/D;->d:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/D;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    if-ne p0, p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/D;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 148
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/D;

    .line 149
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/D;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->b:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/D;->b:I

    if-ne v2, v3, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/D;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/D;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/D;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/D;->d:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/D;->d:Z

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
