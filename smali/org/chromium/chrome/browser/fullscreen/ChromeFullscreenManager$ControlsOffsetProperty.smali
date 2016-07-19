.class Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;
.super Landroid/util/Property;
.source "ChromeFullscreenManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 2

    .prologue
    .line 118
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    .line 119
    const-class v0, Ljava/lang/Float;

    const-string/jumbo v1, "controlsOffset"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 120
    return-void
.end method


# virtual methods
.method public get(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;->get(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;->set(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Ljava/lang/Float;)V

    return-void
.end method

.method public set(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Ljava/lang/Float;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mDisableBrowserOverride:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$000(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 131
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F
    invoke-static {v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$100(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # setter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$102(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;F)F

    .line 133
    # invokes: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateControlOffset()V
    invoke-static {p1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$200(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    .line 134
    # invokes: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateVisuals()V
    invoke-static {p1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$300(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    goto :goto_0
.end method
