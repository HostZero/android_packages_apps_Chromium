.class public final Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"


# instance fields
.field private final context:Ljava/lang/Object;

.field private final errorMessage:Ljava/lang/String;

.field private final errorReason:I

.field private final isTransient:Z


# direct methods
.method private constructor <init>(IZLjava/lang/String;Lcom/google/ipc/invalidation/external/client/types/ErrorContext;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->errorReason:I

    .line 68
    iput-boolean p2, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->isTransient:Z

    .line 69
    iput-object p3, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->errorMessage:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->context:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public static newInstance(IZLjava/lang/String;Lcom/google/ipc/invalidation/external/client/types/ErrorContext;)Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;-><init>(IZLjava/lang/String;Lcom/google/ipc/invalidation/external/client/types/ErrorContext;)V

    return-object v0
.end method


# virtual methods
.method public final getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorReason()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->errorReason:I

    return v0
.end method

.method public final isTransient()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->isTransient:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ErrorInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->errorReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->isTransient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->context:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
