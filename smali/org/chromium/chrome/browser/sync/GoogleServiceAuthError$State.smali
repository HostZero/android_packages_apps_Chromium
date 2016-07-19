.class public final enum Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
.super Ljava/lang/Enum;
.source "GoogleServiceAuthError.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum ACCOUNT_DELETED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum ACCOUNT_DISABLED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum CAPTCHA_REQUIRED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum CONNECTION_FAILED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum HOSTED_NOT_ALLOWED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum INVALID_GAIA_CREDENTIALS:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum NONE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum REQUEST_CANCELED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum SERVICE_UNAVAILABLE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum TWO_FACTOR:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

.field public static final enum USER_NOT_SIGNED_UP:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;


# instance fields
.field private final mCode:I

.field private final mMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 17
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "NONE"

    sget v2, Lorg/chromium/chrome/R$string;->sync_error_generic:I

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->NONE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 21
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "INVALID_GAIA_CREDENTIALS"

    sget v2, Lorg/chromium/chrome/R$string;->sync_error_ga:I

    invoke-direct {v0, v1, v6, v6, v2}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->INVALID_GAIA_CREDENTIALS:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 24
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "USER_NOT_SIGNED_UP"

    sget v2, Lorg/chromium/chrome/R$string;->sync_error_generic:I

    invoke-direct {v0, v1, v7, v7, v2}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->USER_NOT_SIGNED_UP:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 29
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "CONNECTION_FAILED"

    sget v2, Lorg/chromium/chrome/R$string;->sync_error_connection:I

    invoke-direct {v0, v1, v8, v8, v2}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CONNECTION_FAILED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "CAPTCHA_REQUIRED"

    sget v2, Lorg/chromium/chrome/R$string;->sync_error_generic:I

    invoke-direct {v0, v1, v9, v9, v2}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CAPTCHA_REQUIRED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "ACCOUNT_DELETED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    sget v4, Lorg/chromium/chrome/R$string;->sync_error_generic:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DELETED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 41
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "ACCOUNT_DISABLED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    sget v4, Lorg/chromium/chrome/R$string;->sync_error_generic:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DISABLED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 44
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "SERVICE_UNAVAILABLE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    sget v4, Lorg/chromium/chrome/R$string;->sync_error_service_unavailable:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->SERVICE_UNAVAILABLE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 47
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "TWO_FACTOR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    sget v4, Lorg/chromium/chrome/R$string;->sync_error_generic:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->TWO_FACTOR:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 51
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "REQUEST_CANCELED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    sget v4, Lorg/chromium/chrome/R$string;->sync_error_generic:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->REQUEST_CANCELED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    const-string/jumbo v1, "HOSTED_NOT_ALLOWED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    sget v4, Lorg/chromium/chrome/R$string;->sync_error_domain:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->HOSTED_NOT_ALLOWED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->NONE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->INVALID_GAIA_CREDENTIALS:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->USER_NOT_SIGNED_UP:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CONNECTION_FAILED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v1, v0, v8

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CAPTCHA_REQUIRED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DELETED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DISABLED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->SERVICE_UNAVAILABLE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->TWO_FACTOR:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->REQUEST_CANCELED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->HOSTED_NOT_ALLOWED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->$VALUES:[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->mCode:I

    .line 62
    iput p4, p0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->mMessage:I

    .line 63
    return-void
.end method

.method public static fromCode(I)Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    .locals 5

    .prologue
    .line 66
    invoke-static {}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->values()[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 67
    iget v4, v3, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->mCode:I

    if-ne v4, p0, :cond_0

    .line 68
    return-object v3

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No state for code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->$VALUES:[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    return-object v0
.end method


# virtual methods
.method public final getMessage()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->mMessage:I

    return v0
.end method
