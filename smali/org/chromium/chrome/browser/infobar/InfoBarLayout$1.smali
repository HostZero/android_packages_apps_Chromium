.class Lorg/chromium/chrome/browser/infobar/InfoBarLayout$1;
.super Landroid/text/style/ClickableSpan;
.source "InfoBarLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/InfoBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$1;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarLayout;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$1;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mInfoBarView:Lorg/chromium/chrome/browser/infobar/InfoBarView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->access$000(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)Lorg/chromium/chrome/browser/infobar/InfoBarView;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarView;->onLinkClicked()V

    .line 496
    return-void
.end method
