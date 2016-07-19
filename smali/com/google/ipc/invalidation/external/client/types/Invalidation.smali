.class public final Lcom/google/ipc/invalidation/external/client/types/Invalidation;
.super Ljava/lang/Object;
.source "Invalidation.java"


# instance fields
.field private final isTrickleRestart:Z

.field private final objectId:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

.field private final payload:[B

.field private final version:J


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/external/client/types/ObjectId;J[BZ)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, "objectId"

    invoke-static {p1, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->objectId:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    .line 73
    iput-wide p2, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->version:J

    .line 74
    iput-object p4, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    .line 75
    iput-boolean p5, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->isTrickleRestart:Z

    .line 76
    return-void
.end method

.method public static newInstance(Lcom/google/ipc/invalidation/external/client/types/ObjectId;J)Lcom/google/ipc/invalidation/external/client/types/Invalidation;
    .locals 7

    .prologue
    .line 46
    new-instance v0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;-><init>(Lcom/google/ipc/invalidation/external/client/types/ObjectId;J[BZ)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/ipc/invalidation/external/client/types/ObjectId;J[B)Lcom/google/ipc/invalidation/external/client/types/Invalidation;
    .locals 7

    .prologue
    .line 54
    new-instance v0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;

    const/4 v5, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;-><init>(Lcom/google/ipc/invalidation/external/client/types/ObjectId;J[BZ)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/ipc/invalidation/external/client/types/ObjectId;J[BZ)Lcom/google/ipc/invalidation/external/client/types/Invalidation;
    .locals 7

    .prologue
    .line 63
    new-instance v0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;-><init>(Lcom/google/ipc/invalidation/external/client/types/ObjectId;J[BZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    if-ne p1, p0, :cond_1

    move v2, v1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 97
    :cond_1
    instance-of v0, p1, Lcom/google/ipc/invalidation/external/client/types/Invalidation;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/Invalidation;

    .line 102
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    if-ne v0, v3, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->objectId:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->objectId:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    invoke-virtual {v0, v3}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->version:J

    iget-wide v6, p1, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->version:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->isTrickleRestart:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->isTrickleRestart:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 102
    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2
.end method

.method public final getIsTrickleRestartForInternalUse()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->isTrickleRestart:Z

    return v0
.end method

.method public final getObjectId()Lcom/google/ipc/invalidation/external/client/types/ObjectId;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->objectId:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    return-object v0
.end method

.method public final getPayload()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    return-object v0
.end method

.method public final getVersion()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->version:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->objectId:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->version:J

    iget-wide v4, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->version:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 119
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->isTrickleRestart:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    .line 120
    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    if-eqz v1, :cond_0

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_0
    return v0

    .line 119
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Inv: <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->objectId:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->version:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->isTrickleRestart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->payload:[B

    invoke-static {v1}, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
