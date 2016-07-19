.class public Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;
.super Lorg/chromium/chrome/browser/firstrun/FirstRunPage;
.source "AccountFirstRunFragment.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;


# static fields
.field public static final FORCE_SIGNIN_ACCOUNT_TO:Ljava/lang/String; = "ForceSigninAccountTo"

.field public static final IS_CHILD_ACCOUNT:Ljava/lang/String; = "IsChildAccount"

.field public static final PRESELECT_BUT_ALLOW_TO_CHANGE:Ljava/lang/String; = "PreselectButAllowToChange"


# instance fields
.field private mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptBackPressed()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->isInForcedAccountMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "PreselectButAllowToChange"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->interceptBackPressed()Z

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->isInForcedAccountMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "PreselectButAllowToChange"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ForceSigninAccountTo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 107
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->recreateCurrentPage()V

    .line 108
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 31
    sget v0, Lorg/chromium/chrome/R$layout;->account_signin_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->onStart()V

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->getProfileDataCache()Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setProfileDataCache(Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;)V

    .line 85
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->onSigninDialogShown()V

    .line 86
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    new-instance v1, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;-><init>(Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setListener(Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;)V

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setDelegate(Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;)V

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->getProfileDataCache()Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->init(Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;)V

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getProperties()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "IsChildAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setIsChildAccount(Z)V

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ForceSigninAccountTo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->switchToForcedAccountMode(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
