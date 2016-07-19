.class public final Lcom/google/ipc/invalidation/ticl/a/b;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidChannel.java"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/b;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 59
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->b:Ljava/lang/String;

    .line 63
    :goto_0
    if-eqz p2, :cond_1

    .line 64
    or-int/lit8 v0, v0, 0x2

    .line 65
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->c:Ljava/lang/String;

    .line 69
    :goto_1
    if-eqz p3, :cond_2

    .line 70
    or-int/lit8 v0, v0, 0x4

    .line 71
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/b;->d:Ljava/lang/String;

    .line 75
    :goto_2
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/b;->e:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 76
    if-eqz p5, :cond_3

    .line 77
    or-int/lit8 v0, v0, 0x8

    .line 78
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/a/b;->f:Ljava/lang/String;

    .line 82
    :goto_3
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/b;->a:J

    .line 83
    return-void

    .line 61
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->b:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_1
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->c:Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_2
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->d:Ljava/lang/String;

    goto :goto_2

    .line 80
    :cond_3
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->f:Ljava/lang/String;

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;)Lcom/google/ipc/invalidation/ticl/a/b;
    .locals 6

    .prologue
    .line 39
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/b;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;)V

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 86
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->a:J

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
    .line 89
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->a:J

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
    .line 92
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->a:J

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
    .line 97
    const-wide/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->a:J

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
    .line 132
    const-string/jumbo v0, "<AndroidEndpointId:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 133
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, " c2dm_registration_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string/jumbo v0, " client_key="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const-string/jumbo v0, " sender_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/b;->e:Lcom/google/ipc/invalidation/ticl/a/ar;

    if-eqz v0, :cond_3

    .line 143
    const-string/jumbo v0, " channel_version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->e:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 145
    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const-string/jumbo v0, " package_name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 148
    :cond_4
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 149
    return-void
.end method

.method public final a()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 171
    .line 2175
    new-instance v2, Lcom/google/a/a/a/b;

    invoke-direct {v2}, Lcom/google/a/a/a/b;-><init>()V

    .line 2176
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/b;->b:Ljava/lang/String;

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/b;->a:Ljava/lang/String;

    .line 2177
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/b;->c:Ljava/lang/String;

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/b;->b:Ljava/lang/String;

    .line 2178
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/b;->d:Ljava/lang/String;

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/b;->c:Ljava/lang/String;

    .line 2179
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/b;->e:Lcom/google/ipc/invalidation/ticl/a/ar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/b;->e:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->c()Lcom/google/a/a/a/a/J;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/google/a/a/a/b;->d:Lcom/google/a/a/a/a/J;

    .line 2180
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->f:Ljava/lang/String;

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/b;->e:Ljava/lang/String;

    .line 171
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 2176
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2177
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 2178
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 2179
    goto :goto_3
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/b;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 113
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->e:Lcom/google/ipc/invalidation/ticl/a/ar;

    if-eqz v1, :cond_3

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->e:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_4
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/b;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 102
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/b;

    .line 103
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/b;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/b;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/b;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/b;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->e:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/b;->e:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/b;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/b;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/b;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method
