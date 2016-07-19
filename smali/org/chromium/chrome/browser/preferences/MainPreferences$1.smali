.class Lorg/chromium/chrome/browser/preferences/MainPreferences$1;
.super Ljava/lang/Object;
.source "MainPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSignInAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSigninDisabledByPolicy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferencesUtils;->showManagedByAdministratorToast(Landroid/content/Context;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/MainPreferences;->mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->access$000(Lorg/chromium/chrome/browser/preferences/MainPreferences;)Lorg/chromium/chrome/browser/preferences/SignInPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setEnabled(Z)V

    .line 99
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->logSigninStartAccessPoint(I)V

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lorg/chromium/chrome/browser/signin/AccountSigninActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->startActivity(Landroid/content/Intent;)V

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method
