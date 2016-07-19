.class final enum Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;
.super Ljava/lang/Enum;
.source "OverlayPanelEventFilter.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

.field public static final enum HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

.field public static final enum UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

.field public static final enum VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    const-string/jumbo v1, "UNDETERMINED"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    .line 43
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    const-string/jumbo v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    .line 44
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    const-string/jumbo v1, "VERTICAL"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    return-object v0
.end method
