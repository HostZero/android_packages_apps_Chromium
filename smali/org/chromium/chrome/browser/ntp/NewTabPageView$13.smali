.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$13;
.super Ljava/lang/Object;
.source "NewTabPageView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$13;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogoAvailable(Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;Z)V
    .locals 2

    .prologue
    .line 528
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 532
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$13;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$900(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/LogoView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$13;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/LogoView;->setMananger(Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;)V

    .line 530
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$13;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$900(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/LogoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/LogoView;->updateLogo(Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;)V

    .line 531
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$13;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotMostVisitedChanged:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$1002(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Z)Z

    goto :goto_0
.end method
