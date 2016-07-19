.class Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage$1;
.super Ljava/lang/Object;
.source "IncognitoNewTabPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage$1;->this$0:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadIncognitoLearnMore()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage$1;->this$0:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage$1;->this$0:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage$1;->this$0:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->help_context_incognito_learn_more:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onLoadingComplete()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage$1;->this$0:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIsLoaded:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->access$102(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;Z)Z

    .line 49
    return-void
.end method
