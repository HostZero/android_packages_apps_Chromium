.class public final Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;
.super Ljava/lang/Object;
.source "ApplicationClientId.java"


# instance fields
.field private final clientName:[B


# direct methods
.method private constructor <init>([B)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "clientName"

    invoke-static {p1, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;->clientName:[B

    .line 48
    return-void
.end method

.method public static newInstance([B)Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 56
    if-ne p1, p0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;

    if-nez v0, :cond_1

    .line 61
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;

    .line 65
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;->clientName:[B

    iget-object v1, p1, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;->clientName:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final getClientName()[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;->clientName:[B

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;->clientName:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AppClientId: <, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/ApplicationClientId;->clientName:[B

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
