.class public Lorg/chromium/chrome/browser/signin/AccountSigninActivity;
.super Landroid/support/v7/app/C;
.source "AccountSigninActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;
.implements Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mShowSyncSettings:Z

.field private mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/C;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mShowSyncSettings:Z

    return-void
.end method


# virtual methods
.method public onAccountSelected(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 78
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mShowSyncSettings:Z

    .line 79
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mAccountName:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "Signin_Signin_FromSettings"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->signIn(Ljava/lang/String;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    .line 82
    return-void
.end method

.method public onAccountSelectionCanceled()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->finish()V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 46
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handleSynchronousStartup()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    invoke-super {p0, v5}, Landroid/support/v7/app/C;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->account_signin_view:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    new-instance v1, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->init(Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;)V

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setListener(Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;)V

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setDelegate(Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;)V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->setContentView(Landroid/view/View;)V

    .line 64
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string/jumbo v1, "SigninActivity"

    const-string/jumbo v2, "Failed to start browser process."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public onFailedToSetForcedAccount(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "No forced accounts in account switching preferences."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method public onNewAccount()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lorg/chromium/chrome/browser/signin/AccountAdder;->getInstance()Lorg/chromium/chrome/browser/signin/AccountAdder;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1}, Lorg/chromium/chrome/browser/signin/AccountAdder;->addAccount(Landroid/app/Activity;I)V

    .line 74
    return-void
.end method

.method public onSignInAborted()V
    .locals 2

    .prologue
    .line 106
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Signin cannot be aborted when forced."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 107
    :cond_0
    return-void
.end method

.method public onSignInComplete()V
    .locals 4

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mShowSyncSettings:Z

    if-eqz v0, :cond_0

    .line 93
    const-class v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string/jumbo v2, "account"

    iget-object v3, p0, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v2, "show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;->finish()V

    .line 102
    return-void
.end method
