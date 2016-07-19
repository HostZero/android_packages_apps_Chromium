.class Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;
.super Ljava/lang/Object;
.source "AccountManagementFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$preferences:Lorg/chromium/chrome/browser/preferences/Preferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;Lorg/chromium/chrome/browser/preferences/Preferences;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    iput-object p2, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->val$preferences:Lorg/chromium/chrome/browser/preferences/Preferences;

    iput-object p3, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 256
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 268
    :cond_1
    :goto_0
    return v0

    .line 258
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->val$preferences:Lorg/chromium/chrome/browser/preferences/Preferences;

    invoke-static {v1}, Lorg/chromium/sync/AndroidSyncSettings;->isMasterSyncEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 262
    const-string/jumbo v2, "account"

    iget-object v3, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->val$account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->val$preferences:Lorg/chromium/chrome/browser/preferences/Preferences;

    const-class v3, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/chromium/chrome/browser/preferences/Preferences;->startFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 265
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$2;->val$preferences:Lorg/chromium/chrome/browser/preferences/Preferences;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->openSyncSettingsPage(Landroid/app/Activity;)V
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->access$200(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;Landroid/app/Activity;)V

    goto :goto_0
.end method
