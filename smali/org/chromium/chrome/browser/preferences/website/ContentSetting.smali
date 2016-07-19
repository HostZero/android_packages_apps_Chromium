.class public final enum Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
.super Ljava/lang/Enum;
.source "ContentSetting.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field public static final enum ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field public static final enum ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field public static final enum BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field public static final enum DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field public static final enum DETECT_IMPORTANT_CONTENT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field public static final enum SESSION_ONLY:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v4}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 14
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    const-string/jumbo v1, "ALLOW"

    invoke-direct {v0, v1, v5, v5}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 15
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    const-string/jumbo v1, "BLOCK"

    invoke-direct {v0, v1, v6, v6}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 16
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    const-string/jumbo v1, "ASK"

    invoke-direct {v0, v1, v7, v7}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 17
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    const-string/jumbo v1, "SESSION_ONLY"

    invoke-direct {v0, v1, v8, v8}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->SESSION_ONLY:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 18
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    const-string/jumbo v1, "DETECT_IMPORTANT_CONTENT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DETECT_IMPORTANT_CONTENT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->SESSION_ONLY:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DETECT_IMPORTANT_CONTENT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->$VALUES:[Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->mValue:I

    .line 57
    return-void
.end method

.method public static fromInt(I)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 5

    .prologue
    .line 37
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->values()[Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 38
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toInt()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 40
    :goto_1
    return-object v0

    .line 37
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->values()[Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 50
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    :goto_1
    return-object v0

    .line 49
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->$VALUES:[Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->mValue:I

    return v0
.end method
