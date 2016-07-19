.class public final Lcom/google/ipc/invalidation/external/client/types/AckHandle;
.super Ljava/lang/Object;
.source "AckHandle.java"


# instance fields
.field private final handleData:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->handleData:[B

    .line 39
    return-void
.end method

.method public static newInstance([B)Lcom/google/ipc/invalidation/external/client/types/AckHandle;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/ipc/invalidation/external/client/types/AckHandle;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 47
    if-ne p1, p0, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/external/client/types/AckHandle;

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/AckHandle;

    .line 56
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->handleData:[B

    iget-object v1, p1, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->handleData:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final getHandleData()[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->handleData:[B

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->handleData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AckHandle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->handleData:[B

    invoke-static {v1}, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
