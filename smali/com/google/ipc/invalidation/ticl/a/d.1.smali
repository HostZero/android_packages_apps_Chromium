.class public final Lcom/google/ipc/invalidation/ticl/a/d;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidListenerProtocol.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/aa;

.field private final c:Lcom/google/ipc/invalidation/ticl/a/H;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/d;

    invoke-direct {v0, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/d;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Lcom/google/ipc/invalidation/ticl/a/H;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/aa;Lcom/google/ipc/invalidation/ticl/a/H;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 50
    if-eqz p2, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 52
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/d;->c:Lcom/google/ipc/invalidation/ticl/a/H;

    .line 56
    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/d;->a:J

    .line 57
    return-void

    .line 54
    :cond_0
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/H;->a:Lcom/google/ipc/invalidation/ticl/a/H;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/d;->c:Lcom/google/ipc/invalidation/ticl/a/H;

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/d;)Lcom/google/ipc/invalidation/ticl/a/d;
    .locals 3

    .prologue
    .line 106
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/d;

    iget-object v1, p0, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/H;->a(Lcom/google/a/a/a/a/c;)Lcom/google/ipc/invalidation/ticl/a/H;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/d;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Lcom/google/ipc/invalidation/ticl/a/H;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/aa;Lcom/google/ipc/invalidation/ticl/a/H;)Lcom/google/ipc/invalidation/ticl/a/d;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/d;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/ticl/a/d;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Lcom/google/ipc/invalidation/ticl/a/H;)V

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 62
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/d;->a:J

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
.method public final a()Lcom/google/ipc/invalidation/ticl/a/aa;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "<RetryRegistrationState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 86
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v0, " object_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string/jumbo v0, " exponential_backoff_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/d;->c:Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 92
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 93
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/d;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 75
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    if-eqz v1, :cond_0

    .line 76
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/d;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/d;->c:Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/H;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_1
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/ticl/a/H;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/d;->c:Lcom/google/ipc/invalidation/ticl/a/H;

    return-object v0
.end method

.method final d()Lcom/google/a/a/a/d;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    new-instance v2, Lcom/google/a/a/a/d;

    invoke-direct {v2}, Lcom/google/a/a/a/d;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    .line 118
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/d;->c:Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/H;->d()Lcom/google/a/a/a/a/c;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    .line 119
    return-object v2

    :cond_1
    move-object v0, v1

    .line 117
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 67
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/d;

    .line 68
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/d;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/d;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/d;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/d;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/d;->c:Lcom/google/ipc/invalidation/ticl/a/H;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/d;->c:Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
