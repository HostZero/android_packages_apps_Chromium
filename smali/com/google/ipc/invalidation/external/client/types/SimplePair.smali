.class public final Lcom/google/ipc/invalidation/external/client/types/SimplePair;
.super Ljava/lang/Object;
.source "SimplePair.java"


# instance fields
.field public final first:Ljava/lang/Object;

.field public final second:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->first:Ljava/lang/Object;

    .line 53
    iput-object p2, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->second:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method private static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 93
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    instance-of v1, p1, Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    if-eqz v1, :cond_0

    .line 73
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    .line 74
    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->first:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->first:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->second:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->second:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 76
    :cond_0
    return v0
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSecond()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->first:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->second:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 100
    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->second:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
