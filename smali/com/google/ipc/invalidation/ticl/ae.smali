.class public final enum Lcom/google/ipc/invalidation/ticl/ae;
.super Ljava/lang/Enum;
.source "Statistics.java"


# static fields
.field public static final enum a:Lcom/google/ipc/invalidation/ticl/ae;

.field public static final enum b:Lcom/google/ipc/invalidation/ticl/ae;

.field public static final enum c:Lcom/google/ipc/invalidation/ticl/ae;

.field public static final enum d:Lcom/google/ipc/invalidation/ticl/ae;

.field public static final enum e:Lcom/google/ipc/invalidation/ticl/ae;

.field public static final enum f:Lcom/google/ipc/invalidation/ticl/ae;

.field public static final enum g:Lcom/google/ipc/invalidation/ticl/ae;

.field public static final enum h:Lcom/google/ipc/invalidation/ticl/ae;

.field public static final enum i:Lcom/google/ipc/invalidation/ticl/ae;

.field private static final synthetic j:[Lcom/google/ipc/invalidation/ticl/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ae;

    const-string/jumbo v1, "INFO_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/google/ipc/invalidation/ticl/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->a:Lcom/google/ipc/invalidation/ticl/ae;

    .line 60
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ae;

    const-string/jumbo v1, "INVALIDATION"

    invoke-direct {v0, v1, v4}, Lcom/google/ipc/invalidation/ticl/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->b:Lcom/google/ipc/invalidation/ticl/ae;

    .line 61
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ae;

    const-string/jumbo v1, "REGISTRATION_STATUS"

    invoke-direct {v0, v1, v5}, Lcom/google/ipc/invalidation/ticl/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->c:Lcom/google/ipc/invalidation/ticl/ae;

    .line 62
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ae;

    const-string/jumbo v1, "REGISTRATION_SYNC_REQUEST"

    invoke-direct {v0, v1, v6}, Lcom/google/ipc/invalidation/ticl/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->d:Lcom/google/ipc/invalidation/ticl/ae;

    .line 63
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ae;

    const-string/jumbo v1, "TOKEN_CONTROL"

    invoke-direct {v0, v1, v7}, Lcom/google/ipc/invalidation/ticl/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->e:Lcom/google/ipc/invalidation/ticl/ae;

    .line 64
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ae;

    const-string/jumbo v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->f:Lcom/google/ipc/invalidation/ticl/ae;

    .line 65
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ae;

    const-string/jumbo v1, "CONFIG_CHANGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->g:Lcom/google/ipc/invalidation/ticl/ae;

    .line 66
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ae;

    const-string/jumbo v1, "STALE_INVALIDATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->h:Lcom/google/ipc/invalidation/ticl/ae;

    .line 67
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ae;

    const-string/jumbo v1, "TOTAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->i:Lcom/google/ipc/invalidation/ticl/ae;

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/ipc/invalidation/ticl/ae;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->a:Lcom/google/ipc/invalidation/ticl/ae;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->b:Lcom/google/ipc/invalidation/ticl/ae;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->c:Lcom/google/ipc/invalidation/ticl/ae;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->d:Lcom/google/ipc/invalidation/ticl/ae;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->e:Lcom/google/ipc/invalidation/ticl/ae;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ae;->f:Lcom/google/ipc/invalidation/ticl/ae;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ae;->g:Lcom/google/ipc/invalidation/ticl/ae;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ae;->h:Lcom/google/ipc/invalidation/ticl/ae;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ae;->i:Lcom/google/ipc/invalidation/ticl/ae;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ae;->j:[Lcom/google/ipc/invalidation/ticl/ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ipc/invalidation/ticl/ae;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/google/ipc/invalidation/ticl/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/ae;

    return-object v0
.end method

.method public static values()[Lcom/google/ipc/invalidation/ticl/ae;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/ipc/invalidation/ticl/ae;->j:[Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v0}, [Lcom/google/ipc/invalidation/ticl/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ipc/invalidation/ticl/ae;

    return-object v0
.end method
