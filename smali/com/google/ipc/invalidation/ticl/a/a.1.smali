.class public final Lcom/google/ipc/invalidation/ticl/a/a;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidChannel.java"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/a;

    invoke-direct {v0, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/a;-><init>(Ljava/lang/String;Lcom/google/ipc/invalidation/b/c;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/ipc/invalidation/b/c;)V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 199
    const/4 v0, 0x0

    .line 200
    if-eqz p1, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 202
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/a;->b:Ljava/lang/String;

    .line 206
    :goto_0
    if-eqz p2, :cond_1

    .line 207
    or-int/lit8 v0, v0, 0x2

    .line 208
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/a;->c:Lcom/google/ipc/invalidation/b/c;

    .line 212
    :goto_1
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/a;->a:J

    .line 213
    return-void

    .line 204
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/a;->b:Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_1
    sget-object v1, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/a;->c:Lcom/google/ipc/invalidation/b/c;

    goto :goto_1
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/a;
    .locals 3

    .prologue
    .line 254
    :try_start_0
    new-instance v0, Lcom/google/a/a/a/a;

    invoke-direct {v0}, Lcom/google/a/a/a/a;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/a;

    .line 1263
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1264
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/a;

    iget-object v2, v0, Lcom/google/a/a/a/a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/a/a/a/a;->b:[B

    invoke-static {v0}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ipc/invalidation/ticl/a/a;-><init>(Ljava/lang/String;Lcom/google/ipc/invalidation/b/c;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 254
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 257
    :catch_1
    move-exception v0

    .line 258
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 216
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/a;->a:J

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
    .line 219
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/a;->a:J

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
    .line 218
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/a;->c:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 242
    const-string/jumbo v0, "<AddressedAndroidMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 243
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string/jumbo v0, " client_key="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string/jumbo v0, " message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/a;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 249
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 250
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/a;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 232
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/a;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    :cond_1
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    if-ne p0, p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 224
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/a;

    .line 225
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/a;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/a;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/a;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/a;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/a;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
