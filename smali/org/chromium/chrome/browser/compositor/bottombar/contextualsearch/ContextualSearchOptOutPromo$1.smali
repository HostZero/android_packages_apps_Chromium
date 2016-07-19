.class Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$1;
.super Landroid/text/style/ClickableSpan;
.source "ContextualSearchOptOutPromo.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->mHost:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->access$000(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;->onPromoPreferenceClick()V

    .line 92
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 99
    return-void
.end method
