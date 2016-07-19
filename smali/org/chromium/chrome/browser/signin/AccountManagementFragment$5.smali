.class Lorg/chromium/chrome/browser/signin/AccountManagementFragment$5;
.super Ljava/lang/Object;
.source "AccountManagementFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

.field final synthetic val$activity:Lorg/chromium/chrome/browser/preferences/Preferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;Lorg/chromium/chrome/browser/preferences/Preferences;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$5;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    iput-object p2, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$5;->val$activity:Lorg/chromium/chrome/browser/preferences/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$5;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$5;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    .line 394
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$5;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$5;->val$activity:Lorg/chromium/chrome/browser/preferences/Preferences;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->openSyncSettingsPage(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->access$200(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;Landroid/app/Activity;)V

    .line 395
    const/4 v0, 0x1

    goto :goto_0
.end method
