.class public final enum Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;
.super Ljava/lang/Enum;
.source "CompositorButton.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

.field public static final enum OPACITY:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    const-string/jumbo v1, "OPACITY"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->OPACITY:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->OPACITY:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    aput-object v1, v0, v2

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    return-object v0
.end method
