.class public final enum Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;
.super Ljava/lang/Enum;
.source "InvalidationListener.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

.field public static final enum REGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

.field public static final enum UNREGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    const-string/jumbo v1, "REGISTERED"

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->REGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    .line 50
    new-instance v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    const-string/jumbo v1, "UNREGISTERED"

    invoke-direct {v0, v1, v3}, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->UNREGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    sget-object v1, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->REGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->UNREGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->$VALUES:[Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    return-object v0
.end method

.method public static values()[Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->$VALUES:[Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    invoke-virtual {v0}, [Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    return-object v0
.end method
