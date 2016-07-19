.class Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;
.super Ljava/lang/Object;
.source "AccountFirstRunFragment.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountSelected(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->acceptSignIn(Ljava/lang/String;)V

    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->askToOpenSyncSettings()V

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->advanceToNextPage()V

    .line 59
    return-void
.end method

.method public onAccountSelectionCanceled()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->refuseSignIn()V

    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->advanceToNextPage()V

    .line 45
    return-void
.end method

.method public onFailedToSetForcedAccount(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->abortFirstRunExperience()V

    .line 66
    return-void
.end method

.method public onNewAccount()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->openAccountAdder(Landroid/app/Fragment;)V

    .line 50
    return-void
.end method
