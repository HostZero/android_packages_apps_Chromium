.class public final Lcom/google/ipc/invalidation/ticl/a/S;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/S;


# instance fields
.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3001
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/S;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/S;-><init>(Ljava/lang/Long;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/S;->a:Lcom/google/ipc/invalidation/ticl/a/S;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3006
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 3008
    if-eqz p1, :cond_1

    .line 3010
    const-string/jumbo v2, "next_message_delay_ms"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3143
    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 3144
    new-instance v3, Lcom/google/ipc/invalidation/b/o;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v7, "Field \'%s\' must be positive: %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3011
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/S;->c:J

    .line 3015
    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/S;->b:J

    .line 3016
    return-void

    .line 3013
    :cond_1
    iput-wide v6, p0, Lcom/google/ipc/invalidation/ticl/a/S;->c:J

    move v0, v1

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/a/l;)Lcom/google/ipc/invalidation/ticl/a/S;
    .locals 2

    .prologue
    .line 3056
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 3057
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/S;

    iget-object v1, p0, Lcom/google/a/a/a/a/l;->a:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/S;-><init>(Ljava/lang/Long;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 3018
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/S;->c:J

    return-wide v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 3038
    const-string/jumbo v0, "<ConfigChangeMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 3039
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/S;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3040
    const-string/jumbo v0, " next_message_delay_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/S;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 3042
    :cond_0
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 3043
    return-void
.end method

.method protected final b()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 3030
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/S;->b:J

    .line 3214
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 3031
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/S;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3032
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/S;->c:J

    .line 4214
    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 3032
    add-int/2addr v0, v1

    .line 3034
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 3019
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/S;->b:J

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

    .line 3022
    if-ne p0, p1, :cond_1

    .line 3025
    :cond_0
    :goto_0
    return v0

    .line 3023
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/S;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 3024
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/S;

    .line 3025
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/S;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/S;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/S;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/S;->c:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/S;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
