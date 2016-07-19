.class public final Lcom/google/ipc/invalidation/ticl/a/J;
.super Lcom/google/ipc/invalidation/b/n;
.source "Client.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/J;


# instance fields
.field private final b:J

.field private final c:Lcom/google/ipc/invalidation/b/c;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-direct {v0, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/J;-><init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/J;->a:Lcom/google/ipc/invalidation/ticl/a/J;

    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 122
    const/4 v0, 0x0

    .line 123
    if-eqz p1, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 125
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/J;->c:Lcom/google/ipc/invalidation/b/c;

    .line 129
    :goto_0
    if-eqz p2, :cond_1

    .line 130
    or-int/lit8 v0, v0, 0x2

    .line 131
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->d:J

    .line 135
    :goto_1
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/J;->b:J

    .line 136
    return-void

    .line 127
    :cond_0
    sget-object v1, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/J;->c:Lcom/google/ipc/invalidation/b/c;

    goto :goto_0

    .line 133
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->d:J

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;B)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/ticl/a/J;-><init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;)V

    return-void
.end method

.method static a(Lcom/google/a/a/a/a/e;)Lcom/google/ipc/invalidation/ticl/a/J;
    .locals 3

    .prologue
    .line 197
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/J;

    iget-object v1, p0, Lcom/google/a/a/a/a/e;->a:[B

    invoke-static {v1}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/a/e;->b:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/J;-><init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;)Lcom/google/ipc/invalidation/ticl/a/J;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/ticl/a/J;-><init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;)V

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    .line 139
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->b:J

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

.method private h()Z
    .locals 4

    .prologue
    .line 142
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->b:J

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
.method public final a()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/J;->c:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 176
    const-string/jumbo v0, "<PersistentTiclState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 177
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, " client_token="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/J;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string/jumbo v0, " last_message_send_time_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 183
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 184
    return-void
.end method

.method protected final b()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 165
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/J;->b:J

    .line 1214
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 166
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/J;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->d:J

    .line 2214
    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 170
    add-int/2addr v0, v1

    .line 172
    :cond_1
    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/J;->d:J

    return-wide v0
.end method

.method public final d()Lcom/google/ipc/invalidation/ticl/a/F;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/F;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/a/F;-><init>()V

    .line 146
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/J;->c:Lcom/google/ipc/invalidation/b/c;

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/F;->a:Lcom/google/ipc/invalidation/b/c;

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/F;->b:Ljava/lang/Long;

    .line 152
    :cond_1
    return-object v0
.end method

.method public final e()[B
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->f()Lcom/google/a/a/a/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    if-ne p0, p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/J;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 158
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/J;

    .line 159
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/J;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/J;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/J;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/J;->d:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/J;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method final f()Lcom/google/a/a/a/a/e;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 207
    new-instance v2, Lcom/google/a/a/a/a/e;

    invoke-direct {v2}, Lcom/google/a/a/a/a/e;-><init>()V

    .line 208
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/J;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/e;->a:[B

    .line 209
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/J;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/J;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/a/e;->b:Ljava/lang/Long;

    .line 210
    return-object v2

    :cond_1
    move-object v0, v1

    .line 208
    goto :goto_0
.end method
