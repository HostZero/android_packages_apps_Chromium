.class Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler$1;
.super Ljava/lang/Object;
.source "FullscreenHtmlApiHandler.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler$1;->this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;

    iput-object p2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler$1;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler$1;->this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 143
    return-void
.end method
