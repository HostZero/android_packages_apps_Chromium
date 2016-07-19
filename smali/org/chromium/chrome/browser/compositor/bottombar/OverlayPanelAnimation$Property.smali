.class public final enum Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;
.super Ljava/lang/Enum;
.source "OverlayPanelAnimation.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

.field public static final enum BOTTOM_BAR_TEXT_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

.field public static final enum PANEL_HEIGHT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

.field public static final enum PROMO_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    const-string/jumbo v1, "PANEL_HEIGHT"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PANEL_HEIGHT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    .line 31
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    const-string/jumbo v1, "PROMO_VISIBILITY"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PROMO_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    .line 32
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    const-string/jumbo v1, "BOTTOM_BAR_TEXT_VISIBILITY"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->BOTTOM_BAR_TEXT_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PANEL_HEIGHT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PROMO_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->BOTTOM_BAR_TEXT_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    return-object v0
.end method
