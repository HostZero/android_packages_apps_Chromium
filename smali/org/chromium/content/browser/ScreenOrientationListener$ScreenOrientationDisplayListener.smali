.class Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationDisplayListener;
.super Ljava/lang/Object;
.source "ScreenOrientationListener.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationListenerBackend;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ScreenOrientationListener;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/ScreenOrientationListener;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationDisplayListener;->this$0:Lorg/chromium/content/browser/ScreenOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ScreenOrientationListener;Lorg/chromium/content/browser/ScreenOrientationListener$1;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationDisplayListener;-><init>(Lorg/chromium/content/browser/ScreenOrientationListener;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationDisplayListener;->this$0:Lorg/chromium/content/browser/ScreenOrientationListener;

    # invokes: Lorg/chromium/content/browser/ScreenOrientationListener;->notifyObservers()V
    invoke-static {v0}, Lorg/chromium/content/browser/ScreenOrientationListener;->access$200(Lorg/chromium/content/browser/ScreenOrientationListener;)V

    .line 195
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public startAccurateListening()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationDisplayListener;->this$0:Lorg/chromium/content/browser/ScreenOrientationListener;

    # getter for: Lorg/chromium/content/browser/ScreenOrientationListener;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/content/browser/ScreenOrientationListener;->access$000(Lorg/chromium/content/browser/ScreenOrientationListener;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 163
    return-void
.end method

.method public stopAccurateListening()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationDisplayListener;->this$0:Lorg/chromium/content/browser/ScreenOrientationListener;

    # getter for: Lorg/chromium/content/browser/ScreenOrientationListener;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/content/browser/ScreenOrientationListener;->access$000(Lorg/chromium/content/browser/ScreenOrientationListener;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 169
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 170
    return-void
.end method
