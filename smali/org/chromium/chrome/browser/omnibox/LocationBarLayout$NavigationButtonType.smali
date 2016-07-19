.class public final enum Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;
.super Ljava/lang/Enum;
.source "LocationBarLayout.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

.field public static final enum EMPTY:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

.field public static final enum MAGNIFIER:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

.field public static final enum OFFLINE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

.field public static final enum PAGE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 383
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    const-string/jumbo v1, "PAGE"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->PAGE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    .line 384
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    const-string/jumbo v1, "MAGNIFIER"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->MAGNIFIER:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    .line 385
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    const-string/jumbo v1, "EMPTY"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->EMPTY:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    .line 386
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    const-string/jumbo v1, "OFFLINE"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->OFFLINE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    .line 382
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->PAGE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->MAGNIFIER:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->EMPTY:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->OFFLINE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->$VALUES:[Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;
    .locals 1

    .prologue
    .line 382
    const-class v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->$VALUES:[Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    return-object v0
.end method
