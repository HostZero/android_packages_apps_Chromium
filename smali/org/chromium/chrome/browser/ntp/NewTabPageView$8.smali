.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$8;
.super Landroid/text/style/ClickableSpan;
.source "NewTabPageView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$8;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$8;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->optOutPromoClicked(Z)V

    .line 402
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 409
    return-void
.end method
