.class Lorg/chromium/chrome/browser/signin/AccountSigninView$2;
.super Landroid/text/style/ClickableSpan;
.source "AccountSigninView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$2;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$2;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mListener:Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$400(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$2;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$100(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;->onAccountSelected(Ljava/lang/String;Z)V

    .line 494
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$2;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->ui_link_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 500
    return-void
.end method
