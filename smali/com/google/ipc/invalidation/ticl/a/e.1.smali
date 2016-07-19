.class public final Lcom/google/ipc/invalidation/ticl/a/e;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidListenerProtocol.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/f;

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/e;

    invoke-direct {v0, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/e;-><init>(Lcom/google/ipc/invalidation/ticl/a/f;Ljava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/f;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 136
    const/4 v0, 0x0

    .line 137
    if-eqz p1, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 139
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/e;->b:Lcom/google/ipc/invalidation/ticl/a/f;

    .line 143
    :goto_0
    if-eqz p2, :cond_1

    .line 144
    or-int/lit8 v0, v0, 0x2

    .line 145
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/e;->c:J

    .line 149
    :goto_1
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/e;->a:J

    .line 150
    return-void

    .line 141
    :cond_0
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/f;->a:Lcom/google/ipc/invalidation/ticl/a/f;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/e;->b:Lcom/google/ipc/invalidation/ticl/a/f;

    goto :goto_0

    .line 147
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/e;->c:J

    goto :goto_1
.end method

.method static a(Lcom/google/a/a/a/e;)Lcom/google/ipc/invalidation/ticl/a/e;
    .locals 3

    .prologue
    .line 200
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/e;

    iget-object v1, p0, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/f;->a(Lcom/google/a/a/a/f;)Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/e;->b:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/e;-><init>(Lcom/google/ipc/invalidation/ticl/a/f;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/f;Ljava/lang/Long;)Lcom/google/ipc/invalidation/ticl/a/e;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/e;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/ticl/a/e;-><init>(Lcom/google/ipc/invalidation/ticl/a/f;Ljava/lang/Long;)V

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 153
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/e;->a:J

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

.method private f()Z
    .locals 4

    .prologue
    .line 156
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/e;->a:J

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
.method public final a()Lcom/google/ipc/invalidation/ticl/a/f;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/e;->b:Lcom/google/ipc/invalidation/ticl/a/f;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 179
    const-string/jumbo v0, "<ScheduledRegistrationRetry:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 180
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, " command="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/e;->b:Lcom/google/ipc/invalidation/ticl/a/f;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string/jumbo v0, " execute_time_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/e;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 186
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 187
    return-void
.end method

.method protected final b()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 168
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/e;->a:J

    .line 1214
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 169
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/e;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/e;->b:Lcom/google/ipc/invalidation/ticl/a/f;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/e;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/e;->c:J

    .line 2214
    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 173
    add-int/2addr v0, v1

    .line 175
    :cond_1
    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/e;->c:J

    return-wide v0
.end method

.method final d()Lcom/google/a/a/a/e;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 210
    new-instance v2, Lcom/google/a/a/a/e;

    invoke-direct {v2}, Lcom/google/a/a/a/e;-><init>()V

    .line 211
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/e;->b:Lcom/google/ipc/invalidation/ticl/a/f;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/f;->j()Lcom/google/a/a/a/f;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    .line 212
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/e;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/e;->b:Ljava/lang/Long;

    .line 213
    return-object v2

    :cond_1
    move-object v0, v1

    .line 211
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    if-ne p0, p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/e;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 161
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/e;

    .line 162
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/e;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/e;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/e;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/e;->b:Lcom/google/ipc/invalidation/ticl/a/f;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/e;->b:Lcom/google/ipc/invalidation/ticl/a/f;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/e;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/e;->c:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/e;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
