.class final enum Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;
.super Ljava/lang/Enum;
.source "ContextualSearchEventFilter.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

.field public static final enum HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

.field public static final enum UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

.field public static final enum VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    const-string/jumbo v1, "UNDETERMINED"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    .line 40
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    const-string/jumbo v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    .line 41
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    const-string/jumbo v1, "VERTICAL"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    return-object v0
.end method
