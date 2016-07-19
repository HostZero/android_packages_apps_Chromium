.class public final enum Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;
.super Ljava/lang/Enum;
.source "ConnectivityTask.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

.field public static final enum CHROME_HTTP:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

.field public static final enum CHROME_HTTPS:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

.field public static final enum SYSTEM_HTTP:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

.field public static final enum SYSTEM_HTTPS:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    new-instance v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    const-string/jumbo v1, "CHROME_HTTP"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->CHROME_HTTP:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    new-instance v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    const-string/jumbo v1, "CHROME_HTTPS"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->CHROME_HTTPS:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    new-instance v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    const-string/jumbo v1, "SYSTEM_HTTP"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->SYSTEM_HTTP:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    new-instance v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    const-string/jumbo v1, "SYSTEM_HTTPS"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->SYSTEM_HTTPS:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    sget-object v1, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->CHROME_HTTP:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->CHROME_HTTPS:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->SYSTEM_HTTP:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->SYSTEM_HTTPS:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->$VALUES:[Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;
    .locals 1

    .prologue
    .line 202
    const-class v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->$VALUES:[Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    return-object v0
.end method
