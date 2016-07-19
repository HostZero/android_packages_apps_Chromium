.class Lorg/chromium/chrome/browser/ntp/NewTabPage$2$2;
.super Ljava/lang/Object;
.source "NewTabPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/ntp/NewTabPage$2;

.field final synthetic val$logoObserver:Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPage$2;Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$2;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPage$2;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$2;->val$logoObserver:Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogoAvailable(Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$2;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPage$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$2;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPage$2;

    iget-object v2, v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;->onClickUrl:Ljava/lang/String;

    :goto_1
    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOnLogoClickUrl:Ljava/lang/String;
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1602(Lorg/chromium/chrome/browser/ntp/NewTabPage;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$2;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPage$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;->animatedLogoUrl:Ljava/lang/String;

    :cond_1
    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mAnimatedLogoUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1402(Lorg/chromium/chrome/browser/ntp/NewTabPage;Ljava/lang/String;)Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$2;->val$logoObserver:Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;->onLogoAvailable(Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;Z)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 512
    goto :goto_1
.end method
