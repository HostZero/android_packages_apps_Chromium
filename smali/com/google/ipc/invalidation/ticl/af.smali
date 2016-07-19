.class public final enum Lcom/google/ipc/invalidation/ticl/af;
.super Ljava/lang/Enum;
.source "Statistics.java"


# static fields
.field public static final enum a:Lcom/google/ipc/invalidation/ticl/af;

.field public static final enum b:Lcom/google/ipc/invalidation/ticl/af;

.field public static final enum c:Lcom/google/ipc/invalidation/ticl/af;

.field public static final enum d:Lcom/google/ipc/invalidation/ticl/af;

.field public static final enum e:Lcom/google/ipc/invalidation/ticl/af;

.field public static final enum f:Lcom/google/ipc/invalidation/ticl/af;

.field private static final synthetic g:[Lcom/google/ipc/invalidation/ticl/af;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/google/ipc/invalidation/ticl/af;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/google/ipc/invalidation/ticl/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/af;->a:Lcom/google/ipc/invalidation/ticl/af;

    .line 47
    new-instance v0, Lcom/google/ipc/invalidation/ticl/af;

    const-string/jumbo v1, "INITIALIZE"

    invoke-direct {v0, v1, v4}, Lcom/google/ipc/invalidation/ticl/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/af;->b:Lcom/google/ipc/invalidation/ticl/af;

    .line 48
    new-instance v0, Lcom/google/ipc/invalidation/ticl/af;

    const-string/jumbo v1, "INVALIDATION_ACK"

    invoke-direct {v0, v1, v5}, Lcom/google/ipc/invalidation/ticl/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/af;->c:Lcom/google/ipc/invalidation/ticl/af;

    .line 49
    new-instance v0, Lcom/google/ipc/invalidation/ticl/af;

    const-string/jumbo v1, "REGISTRATION"

    invoke-direct {v0, v1, v6}, Lcom/google/ipc/invalidation/ticl/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/af;->d:Lcom/google/ipc/invalidation/ticl/af;

    .line 50
    new-instance v0, Lcom/google/ipc/invalidation/ticl/af;

    const-string/jumbo v1, "REGISTRATION_SYNC"

    invoke-direct {v0, v1, v7}, Lcom/google/ipc/invalidation/ticl/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/af;->e:Lcom/google/ipc/invalidation/ticl/af;

    .line 51
    new-instance v0, Lcom/google/ipc/invalidation/ticl/af;

    const-string/jumbo v1, "TOTAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/af;->f:Lcom/google/ipc/invalidation/ticl/af;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/ipc/invalidation/ticl/af;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/af;->a:Lcom/google/ipc/invalidation/ticl/af;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ipc/invalidation/ticl/af;->b:Lcom/google/ipc/invalidation/ticl/af;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ipc/invalidation/ticl/af;->c:Lcom/google/ipc/invalidation/ticl/af;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ipc/invalidation/ticl/af;->d:Lcom/google/ipc/invalidation/ticl/af;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ipc/invalidation/ticl/af;->e:Lcom/google/ipc/invalidation/ticl/af;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ipc/invalidation/ticl/af;->f:Lcom/google/ipc/invalidation/ticl/af;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ipc/invalidation/ticl/af;->g:[Lcom/google/ipc/invalidation/ticl/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ipc/invalidation/ticl/af;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/ipc/invalidation/ticl/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/af;

    return-object v0
.end method

.method public static values()[Lcom/google/ipc/invalidation/ticl/af;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/ipc/invalidation/ticl/af;->g:[Lcom/google/ipc/invalidation/ticl/af;

    invoke-virtual {v0}, [Lcom/google/ipc/invalidation/ticl/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ipc/invalidation/ticl/af;

    return-object v0
.end method
