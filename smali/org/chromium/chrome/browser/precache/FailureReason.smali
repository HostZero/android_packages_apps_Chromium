.class final enum Lorg/chromium/chrome/browser/precache/FailureReason;
.super Ljava/lang/Enum;
.source "FailureReason.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/precache/FailureReason;

.field public static final enum CURRENTLY_PRECACHING:Lorg/chromium/chrome/browser/precache/FailureReason;

.field public static final enum NATIVE_SHOULD_RUN_IS_FALSE:Lorg/chromium/chrome/browser/precache/FailureReason;

.field public static final enum NOT_ENOUGH_TIME_SINCE_LAST_PRECACHE:Lorg/chromium/chrome/browser/precache/FailureReason;

.field public static final enum NO_POWER:Lorg/chromium/chrome/browser/precache/FailureReason;

.field public static final enum NO_WIFI:Lorg/chromium/chrome/browser/precache/FailureReason;

.field public static final enum PRERENDER_PRIVACY_PREFERENCE_NOT_ENABLED:Lorg/chromium/chrome/browser/precache/FailureReason;

.field public static final enum SYNC_NOT_INITIALIZED:Lorg/chromium/chrome/browser/precache/FailureReason;

.field public static final enum UPDATE_PRECACHING_ENABLED_NEVER_CALLED:Lorg/chromium/chrome/browser/precache/FailureReason;


# instance fields
.field private final mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    const-string/jumbo v1, "UPDATE_PRECACHING_ENABLED_NEVER_CALLED"

    invoke-direct {v0, v1, v4, v4}, Lorg/chromium/chrome/browser/precache/FailureReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->UPDATE_PRECACHING_ENABLED_NEVER_CALLED:Lorg/chromium/chrome/browser/precache/FailureReason;

    .line 15
    new-instance v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    const-string/jumbo v1, "SYNC_NOT_INITIALIZED"

    invoke-direct {v0, v1, v5, v5}, Lorg/chromium/chrome/browser/precache/FailureReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->SYNC_NOT_INITIALIZED:Lorg/chromium/chrome/browser/precache/FailureReason;

    .line 18
    new-instance v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    const-string/jumbo v1, "PRERENDER_PRIVACY_PREFERENCE_NOT_ENABLED"

    invoke-direct {v0, v1, v6, v6}, Lorg/chromium/chrome/browser/precache/FailureReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->PRERENDER_PRIVACY_PREFERENCE_NOT_ENABLED:Lorg/chromium/chrome/browser/precache/FailureReason;

    .line 21
    new-instance v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    const-string/jumbo v1, "NATIVE_SHOULD_RUN_IS_FALSE"

    invoke-direct {v0, v1, v7, v7}, Lorg/chromium/chrome/browser/precache/FailureReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->NATIVE_SHOULD_RUN_IS_FALSE:Lorg/chromium/chrome/browser/precache/FailureReason;

    .line 24
    new-instance v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    const-string/jumbo v1, "NO_POWER"

    invoke-direct {v0, v1, v8, v8}, Lorg/chromium/chrome/browser/precache/FailureReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->NO_POWER:Lorg/chromium/chrome/browser/precache/FailureReason;

    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    const-string/jumbo v1, "NO_WIFI"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/precache/FailureReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->NO_WIFI:Lorg/chromium/chrome/browser/precache/FailureReason;

    .line 32
    new-instance v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    const-string/jumbo v1, "NOT_ENOUGH_TIME_SINCE_LAST_PRECACHE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/precache/FailureReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->NOT_ENOUGH_TIME_SINCE_LAST_PRECACHE:Lorg/chromium/chrome/browser/precache/FailureReason;

    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    const-string/jumbo v1, "CURRENTLY_PRECACHING"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/precache/FailureReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->CURRENTLY_PRECACHING:Lorg/chromium/chrome/browser/precache/FailureReason;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/chromium/chrome/browser/precache/FailureReason;

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->UPDATE_PRECACHING_ENABLED_NEVER_CALLED:Lorg/chromium/chrome/browser/precache/FailureReason;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->SYNC_NOT_INITIALIZED:Lorg/chromium/chrome/browser/precache/FailureReason;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->PRERENDER_PRIVACY_PREFERENCE_NOT_ENABLED:Lorg/chromium/chrome/browser/precache/FailureReason;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->NATIVE_SHOULD_RUN_IS_FALSE:Lorg/chromium/chrome/browser/precache/FailureReason;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->NO_POWER:Lorg/chromium/chrome/browser/precache/FailureReason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/precache/FailureReason;->NO_WIFI:Lorg/chromium/chrome/browser/precache/FailureReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/precache/FailureReason;->NOT_ENOUGH_TIME_SINCE_LAST_PRECACHE:Lorg/chromium/chrome/browser/precache/FailureReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/chrome/browser/precache/FailureReason;->CURRENTLY_PRECACHING:Lorg/chromium/chrome/browser/precache/FailureReason;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->$VALUES:[Lorg/chromium/chrome/browser/precache/FailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lorg/chromium/chrome/browser/precache/FailureReason;->mPosition:I

    .line 46
    return-void
.end method

.method static bitValue(Ljava/util/EnumSet;)I
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    const/4 v3, 0x1

    iget v0, v0, Lorg/chromium/chrome/browser/precache/FailureReason;->mPosition:I

    shl-int v0, v3, v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 41
    :cond_0
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/precache/FailureReason;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/precache/FailureReason;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/chromium/chrome/browser/precache/FailureReason;->$VALUES:[Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/precache/FailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/precache/FailureReason;

    return-object v0
.end method
