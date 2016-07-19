.class public final enum Lcom/google/ipc/invalidation/ticl/ad;
.super Ljava/lang/Enum;
.source "Statistics.java"


# static fields
.field public static final enum a:Lcom/google/ipc/invalidation/ticl/ad;

.field public static final enum b:Lcom/google/ipc/invalidation/ticl/ad;

.field public static final enum c:Lcom/google/ipc/invalidation/ticl/ad;

.field public static final enum d:Lcom/google/ipc/invalidation/ticl/ad;

.field public static final enum e:Lcom/google/ipc/invalidation/ticl/ad;

.field public static final enum f:Lcom/google/ipc/invalidation/ticl/ad;

.field public static final enum g:Lcom/google/ipc/invalidation/ticl/ad;

.field private static final synthetic h:[Lcom/google/ipc/invalidation/ticl/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ad;

    const-string/jumbo v1, "INFORM_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/ipc/invalidation/ticl/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ad;->a:Lcom/google/ipc/invalidation/ticl/ad;

    .line 80
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ad;

    const-string/jumbo v1, "INFORM_REGISTRATION_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/google/ipc/invalidation/ticl/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ad;->b:Lcom/google/ipc/invalidation/ticl/ad;

    .line 81
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ad;

    const-string/jumbo v1, "INFORM_REGISTRATION_STATUS"

    invoke-direct {v0, v1, v5}, Lcom/google/ipc/invalidation/ticl/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ad;->c:Lcom/google/ipc/invalidation/ticl/ad;

    .line 82
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ad;

    const-string/jumbo v1, "INVALIDATE"

    invoke-direct {v0, v1, v6}, Lcom/google/ipc/invalidation/ticl/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ad;->d:Lcom/google/ipc/invalidation/ticl/ad;

    .line 83
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ad;

    const-string/jumbo v1, "INVALIDATE_ALL"

    invoke-direct {v0, v1, v7}, Lcom/google/ipc/invalidation/ticl/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ad;->e:Lcom/google/ipc/invalidation/ticl/ad;

    .line 84
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ad;

    const-string/jumbo v1, "INVALIDATE_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ad;->f:Lcom/google/ipc/invalidation/ticl/ad;

    .line 85
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ad;

    const-string/jumbo v1, "REISSUE_REGISTRATIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ad;->g:Lcom/google/ipc/invalidation/ticl/ad;

    .line 78
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/ipc/invalidation/ticl/ad;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ad;->a:Lcom/google/ipc/invalidation/ticl/ad;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ad;->b:Lcom/google/ipc/invalidation/ticl/ad;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ad;->c:Lcom/google/ipc/invalidation/ticl/ad;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ad;->d:Lcom/google/ipc/invalidation/ticl/ad;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ad;->e:Lcom/google/ipc/invalidation/ticl/ad;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ad;->f:Lcom/google/ipc/invalidation/ticl/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ad;->g:Lcom/google/ipc/invalidation/ticl/ad;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ad;->h:[Lcom/google/ipc/invalidation/ticl/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ipc/invalidation/ticl/ad;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/google/ipc/invalidation/ticl/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/ad;

    return-object v0
.end method

.method public static values()[Lcom/google/ipc/invalidation/ticl/ad;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/ipc/invalidation/ticl/ad;->h:[Lcom/google/ipc/invalidation/ticl/ad;

    invoke-virtual {v0}, [Lcom/google/ipc/invalidation/ticl/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ipc/invalidation/ticl/ad;

    return-object v0
.end method
