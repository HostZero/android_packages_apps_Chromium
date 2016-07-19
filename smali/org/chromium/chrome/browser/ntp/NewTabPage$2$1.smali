.class Lorg/chromium/chrome/browser/ntp/NewTabPage$2$1;
.super Ljava/lang/Object;
.source "NewTabPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/LogoBridge$AnimatedLogoCallback;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/ntp/NewTabPage$2;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPage$2;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$1;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatedLogoAvailable(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;)V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$1;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPage$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$1;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPage$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$100(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->playAnimatedLogo(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;)V

    goto :goto_0
.end method
