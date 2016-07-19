.class public final enum Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;
.super Ljava/lang/Enum;
.source "BandwidthType.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum ALWAYS_PRERENDER:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

.field public static final DEFAULT:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

.field public static final enum NEVER_PRERENDER:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

.field public static final enum PRERENDER_ON_WIFI:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;


# instance fields
.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10
    const-class v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->$assertionsDisabled:Z

    .line 14
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    const-string/jumbo v3, "NEVER_PRERENDER"

    const-string/jumbo v4, "never_prefetch"

    invoke-direct {v0, v3, v2, v4}, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->NEVER_PRERENDER:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    .line 15
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    const-string/jumbo v3, "PRERENDER_ON_WIFI"

    const-string/jumbo v4, "prefetch_on_wifi"

    invoke-direct {v0, v3, v1, v4}, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->PRERENDER_ON_WIFI:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    .line 16
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    const-string/jumbo v3, "ALWAYS_PRERENDER"

    const-string/jumbo v4, "always_prefetch"

    invoke-direct {v0, v3, v5, v4}, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->ALWAYS_PRERENDER:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    sget-object v3, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->NEVER_PRERENDER:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    aput-object v3, v0, v2

    sget-object v2, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->PRERENDER_ON_WIFI:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    aput-object v2, v0, v1

    sget-object v1, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->ALWAYS_PRERENDER:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->$VALUES:[Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    .line 18
    sget-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->PRERENDER_ON_WIFI:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->DEFAULT:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    return-void

    :cond_0
    move v0, v2

    .line 10
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->mTitle:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static getBandwidthFromTitle(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->values()[Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 41
    iget-object v4, v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    :goto_1
    return-object v0

    .line 40
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->DEFAULT:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->$VALUES:[Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    return-object v0
.end method


# virtual methods
.method public final title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->mTitle:Ljava/lang/String;

    return-object v0
.end method
