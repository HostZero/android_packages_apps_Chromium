.class public Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;
.super Ljava/lang/Object;
.source "InvalidationClientConfig.java"


# instance fields
.field public final allowSuppression:Z

.field public final applicationName:Ljava/lang/String;

.field public final clientName:[B

.field public final clientType:I


# direct methods
.method public constructor <init>(I[BLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->clientType:I

    .line 39
    iput-object p2, p0, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->clientName:[B

    .line 40
    iput-object p3, p0, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->applicationName:Ljava/lang/String;

    .line 41
    iput-boolean p4, p0, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->allowSuppression:Z

    .line 42
    return-void
.end method
