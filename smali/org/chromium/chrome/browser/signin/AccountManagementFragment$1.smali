.class Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;
.super Ljava/lang/Object;
.source "AccountManagementFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getSignOutAllowedPreferenceValue(Landroid/content/Context;)Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->access$000(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 v1, 0x5

    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->access$100(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->logEvent(II)V

    .line 231
    new-instance v1, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;-><init>()V

    .line 232
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 233
    const-string/jumbo v3, "ShowGAIAServiceType"

    iget-object v4, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I
    invoke-static {v4}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->access$100(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 236
    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "sign_out_dialog_tag"

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    goto :goto_0
.end method
