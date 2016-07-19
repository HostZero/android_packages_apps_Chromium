.class final enum Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;
.super Ljava/lang/Enum;
.source "OverlayPanelEventFilter.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

.field public static final enum CONTENT_VIEW:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

.field public static final enum PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

.field public static final enum UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    const-string/jumbo v1, "UNDETERMINED"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    const-string/jumbo v1, "PANEL"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    const-string/jumbo v1, "CONTENT_VIEW"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->CONTENT_VIEW:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->CONTENT_VIEW:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    return-object v0
.end method
