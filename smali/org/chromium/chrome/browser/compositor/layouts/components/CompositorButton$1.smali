.class synthetic Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$1;
.super Ljava/lang/Object;
.source "CompositorButton.java"


# static fields
.field static final synthetic $SwitchMap$org$chromium$chrome$browser$compositor$layouts$components$CompositorButton$Property:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->values()[Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$components$CompositorButton$Property:[I

    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$components$CompositorButton$Property:[I

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->OPACITY:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
