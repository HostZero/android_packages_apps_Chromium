.class public final Lcom/google/ipc/invalidation/ticl/a/aq;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/aq;


# instance fields
.field private final b:J

.field private final c:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2050
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/aq;-><init>(Lcom/google/ipc/invalidation/b/c;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/aq;->a:Lcom/google/ipc/invalidation/ticl/a/aq;

    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/b/c;)V
    .locals 2

    .prologue
    .line 2055
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 2056
    const/4 v0, 0x0

    .line 2057
    if-eqz p1, :cond_0

    .line 2058
    const/4 v0, 0x1

    .line 2059
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->c:Lcom/google/ipc/invalidation/b/c;

    .line 2063
    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->b:J

    .line 2064
    return-void

    .line 2061
    :cond_0
    sget-object v1, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->c:Lcom/google/ipc/invalidation/b/c;

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/a/I;)Lcom/google/ipc/invalidation/ticl/a/aq;
    .locals 2

    .prologue
    .line 2104
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aq;

    iget-object v1, p0, Lcom/google/a/a/a/a/I;->a:[B

    invoke-static {v1}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/aq;-><init>(Lcom/google/ipc/invalidation/b/c;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->c:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 2086
    const-string/jumbo v0, "<TokenControlMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 2087
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    const-string/jumbo v0, " new_token="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 2090
    :cond_0
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2091
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 2078
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->b:J

    .line 2214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 2079
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/aq;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2080
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2082
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 2067
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->b:J

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

    .line 2070
    if-ne p0, p1, :cond_1

    .line 2073
    :cond_0
    :goto_0
    return v0

    .line 2071
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/aq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2072
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/aq;

    .line 2073
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/aq;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/aq;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/aq;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/aq;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/aq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
