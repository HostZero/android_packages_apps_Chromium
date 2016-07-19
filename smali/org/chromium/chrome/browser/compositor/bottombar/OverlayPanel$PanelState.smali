.class public final enum Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
.super Ljava/lang/Enum;
.source "OverlayPanel.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

.field public static final enum CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

.field public static final enum EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

.field public static final enum MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

.field public static final enum PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

.field public static final enum UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    const-string/jumbo v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 49
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    const-string/jumbo v1, "CLOSED"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 50
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    const-string/jumbo v1, "PEEKED"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 51
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    const-string/jumbo v1, "EXPANDED"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 52
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    const-string/jumbo v1, "MAXIMIZED"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->$VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->$VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    return-object v0
.end method
