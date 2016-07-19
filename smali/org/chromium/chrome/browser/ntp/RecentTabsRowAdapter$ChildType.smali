.class final enum Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;
.super Ljava/lang/Enum;
.source "RecentTabsRowAdapter.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

.field public static final enum DEFAULT_CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

.field public static final enum NONE:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

.field public static final enum SYNC_PROMO:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->NONE:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    const-string/jumbo v1, "DEFAULT_CONTENT"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->DEFAULT_CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    const-string/jumbo v1, "SYNC_PROMO"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->SYNC_PROMO:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    sget-object v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->NONE:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->DEFAULT_CONTENT:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->SYNC_PROMO:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->$VALUES:[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->$VALUES:[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    return-object v0
.end method
