.class final enum Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;
.super Ljava/lang/Enum;
.source "RecentTabsRowAdapter.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

.field public static final enum CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

.field public static final enum INVISIBLE_SEPARATOR:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

.field public static final enum VISIBLE_SEPARATOR:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    const-string/jumbo v1, "CONTENT"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    const-string/jumbo v1, "VISIBLE_SEPARATOR"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->VISIBLE_SEPARATOR:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    const-string/jumbo v1, "INVISIBLE_SEPARATOR"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->INVISIBLE_SEPARATOR:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    sget-object v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->VISIBLE_SEPARATOR:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->INVISIBLE_SEPARATOR:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->$VALUES:[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->$VALUES:[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    return-object v0
.end method
