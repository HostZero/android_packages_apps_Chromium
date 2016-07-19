.class public final enum Lcom/google/ipc/invalidation/ticl/ab;
.super Ljava/lang/Enum;
.source "Statistics.java"


# static fields
.field public static final enum a:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum b:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum c:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum d:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum e:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum f:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum g:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum h:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum i:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum j:Lcom/google/ipc/invalidation/ticl/ab;

.field public static final enum k:Lcom/google/ipc/invalidation/ticl/ab;

.field private static enum l:Lcom/google/ipc/invalidation/ticl/ab;

.field private static final synthetic m:[Lcom/google/ipc/invalidation/ticl/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "ACKNOWLEDGE_HANDLE_FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->a:Lcom/google/ipc/invalidation/ticl/ab;

    .line 94
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "INCOMING_MESSAGE_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->b:Lcom/google/ipc/invalidation/ticl/ab;

    .line 97
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "OUTGOING_MESSAGE_FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->c:Lcom/google/ipc/invalidation/ticl/ab;

    .line 100
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "PERSISTENT_DESERIALIZATION_FAILURE"

    invoke-direct {v0, v1, v6}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->d:Lcom/google/ipc/invalidation/ticl/ab;

    .line 103
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "PERSISTENT_READ_FAILURE"

    invoke-direct {v0, v1, v7}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->e:Lcom/google/ipc/invalidation/ticl/ab;

    .line 106
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "PERSISTENT_WRITE_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->f:Lcom/google/ipc/invalidation/ticl/ab;

    .line 109
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "PROTOCOL_VERSION_FAILURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->g:Lcom/google/ipc/invalidation/ticl/ab;

    .line 115
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "REGISTRATION_DISCREPANCY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->h:Lcom/google/ipc/invalidation/ticl/ab;

    .line 118
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "NONCE_MISMATCH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->i:Lcom/google/ipc/invalidation/ticl/ab;

    .line 121
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "TOKEN_MISMATCH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->j:Lcom/google/ipc/invalidation/ticl/ab;

    .line 124
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "TOKEN_MISSING_FAILURE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->k:Lcom/google/ipc/invalidation/ticl/ab;

    .line 127
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ab;

    const-string/jumbo v1, "TOKEN_TRANSIENT_FAILURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->l:Lcom/google/ipc/invalidation/ticl/ab;

    .line 89
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/ipc/invalidation/ticl/ab;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->a:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->b:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->c:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->d:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->e:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->f:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->g:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->h:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->i:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->j:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->k:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->l:Lcom/google/ipc/invalidation/ticl/ab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ipc/invalidation/ticl/ab;->m:[Lcom/google/ipc/invalidation/ticl/ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ipc/invalidation/ticl/ab;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/google/ipc/invalidation/ticl/ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/ab;

    return-object v0
.end method

.method public static values()[Lcom/google/ipc/invalidation/ticl/ab;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/ipc/invalidation/ticl/ab;->m:[Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v0}, [Lcom/google/ipc/invalidation/ticl/ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ipc/invalidation/ticl/ab;

    return-object v0
.end method
