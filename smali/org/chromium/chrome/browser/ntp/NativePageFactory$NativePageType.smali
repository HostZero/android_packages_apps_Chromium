.class final enum Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;
.super Ljava/lang/Enum;
.source "NativePageFactory.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

.field public static final enum BOOKMARKS:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

.field public static final enum CANDIDATE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

.field public static final enum NONE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

.field public static final enum NTP:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

.field public static final enum PHYSICAL_WEB:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

.field public static final enum RECENT_TABS:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NONE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    new-instance v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    const-string/jumbo v1, "CANDIDATE"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->CANDIDATE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    new-instance v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    const-string/jumbo v1, "NTP"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NTP:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    new-instance v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    const-string/jumbo v1, "BOOKMARKS"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->BOOKMARKS:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    new-instance v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    const-string/jumbo v1, "RECENT_TABS"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->RECENT_TABS:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    new-instance v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    const-string/jumbo v1, "PHYSICAL_WEB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->PHYSICAL_WEB:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    sget-object v1, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NONE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->CANDIDATE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NTP:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->BOOKMARKS:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->RECENT_TABS:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->PHYSICAL_WEB:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->$VALUES:[Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->$VALUES:[Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    return-object v0
.end method
