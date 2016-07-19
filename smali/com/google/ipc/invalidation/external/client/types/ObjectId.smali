.class public final Lcom/google/ipc/invalidation/external/client/types/ObjectId;
.super Ljava/lang/Object;
.source "ObjectId.java"


# instance fields
.field private final name:[B

.field private final source:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "source"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 47
    iput p1, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->source:I

    .line 48
    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->name:[B

    .line 49
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(I[B)Lcom/google/ipc/invalidation/external/client/types/ObjectId;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p1, p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    if-nez v2, :cond_2

    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    .line 70
    iget v2, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->source:I

    iget v3, p1, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->source:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->name:[B

    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->name:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public final getName()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->name:[B

    return-object v0
.end method

.method public final getSource()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->source:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->source:I

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->name:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Oid: <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->name:[B

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
