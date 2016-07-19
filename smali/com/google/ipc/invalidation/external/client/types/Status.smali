.class public final Lcom/google/ipc/invalidation/external/client/types/Status;
.super Ljava/lang/Object;
.source "Status.java"


# instance fields
.field private final code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

.field private final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    .line 56
    iput-object p2, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->message:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/ipc/invalidation/external/client/types/Status;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/external/client/types/Status;-><init>(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    if-ne p1, p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/external/client/types/Status;

    if-nez v2, :cond_2

    move v0, v1

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/Status;

    .line 108
    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/types/Status;->code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 109
    goto :goto_0

    .line 112
    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->message:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 113
    iget-object v2, p1, Lcom/google/ipc/invalidation/external/client/types/Status;->message:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/ipc/invalidation/external/client/types/Status;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getCode()Lcom/google/ipc/invalidation/external/client/types/Status$Code;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isPermanentFailure()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSuccess()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->SUCCESS:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTransientFailure()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->TRANSIENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->code:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/Status;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
