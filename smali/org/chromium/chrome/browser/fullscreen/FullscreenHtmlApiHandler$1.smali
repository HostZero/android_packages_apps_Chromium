.class Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$1;
.super Ljava/lang/Object;
.source "FullscreenHtmlApiHandler.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$tab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$1;->this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    iput-object p2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$1;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    iput-object p3, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$1;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 242
    sub-int v0, p5, p3

    sub-int v1, p9, p7

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$1;->this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->access$200(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$1;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;->onFullscreenExited(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 246
    :cond_0
    return-void
.end method
