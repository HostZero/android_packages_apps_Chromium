.class Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$1;
.super Ljava/lang/Object;
.source "ChromeFullscreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$1;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$1;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # invokes: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->shouldShowAndroidControls()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$400(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$1;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainer:Landroid/view/View;
    invoke-static {v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$500(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 149
    :goto_1
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$1;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainer:Landroid/view/View;
    invoke-static {v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$500(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$1;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainer:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$500(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method
