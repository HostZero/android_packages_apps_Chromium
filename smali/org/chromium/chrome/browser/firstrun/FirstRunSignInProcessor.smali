.class public final Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;
.super Ljava/lang/Object;
.source "FirstRunSignInProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->openSyncSettings(Landroid/app/Activity;)V

    return-void
.end method

.method public static finalizeFirstRunFlowState(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->setFirstRunFlowComplete(Landroid/content/Context;Z)V

    .line 208
    const-string/jumbo v0, "ResultSignInTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->setFirstRunFlowSignInAccountName(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v0, "ResultShowSyncSettings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->setFirstRunFlowSignInSetupSync(Landroid/content/Context;Z)V

    .line 212
    return-void
.end method

.method private static getFirstRunFlowSignInAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "first_run_signin_account_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstRunFlowSignInComplete(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "first_run_signin_complete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getFirstRunFlowSignInSetupSync(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 185
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "first_run_signin_setup_sync"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static openSyncSettings(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 110
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isFirstSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_2
    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const-class v1, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string/jumbo v3, "account"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "show_fragment_args"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static requestToFireIntentAndFinish(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    const-string/jumbo v0, "FirstRunSigninProc"

    const-string/jumbo v1, "Attempt to pass-through without completed FRE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-static {p0, v3}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->setFirstRunFlowComplete(Landroid/content/Context;Z)V

    .line 130
    invoke-static {p0, v3}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->setFirstRunFlowSignInComplete(Landroid/content/Context;Z)V

    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->setFirstRunFlowSignInAccountName(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    invoke-static {p0, v3}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->setFirstRunFlowSignInSetupSync(Landroid/content/Context;Z)V

    .line 133
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->createGenericFirstRunIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method private static setFirstRunFlowSignInAccountName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 174
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "first_run_signin_account_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    return-void
.end method

.method public static setFirstRunFlowSignInComplete(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 153
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "first_run_signin_complete"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    return-void
.end method

.method private static setFirstRunFlowSignInSetupSync(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 195
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "first_run_signin_setup_sync"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    return-void
.end method

.method public static start(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->onFirstRunCheckDone()V

    .line 60
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v1

    .line 64
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string/jumbo v3, "disable-fre"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/ToSAckedReceiver;->checkAnyUserHasSeenToS(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-nez v1, :cond_2

    .line 70
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->requestToFireIntentAndFinish(Landroid/app/Activity;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->getFirstRunFlowSignInComplete(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->getFirstRunFlowSignInAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->canAllowSync(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSignInAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    :cond_3
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->setFirstRunFlowSignInComplete(Landroid/content/Context;Z)V

    goto :goto_0

    .line 85
    :cond_4
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->getFirstRunFlowSignInSetupSync(Landroid/content/Context;)Z

    move-result v2

    .line 86
    const-string/jumbo v3, "Signin_Signin_FromStartPage"

    invoke-static {v3}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 87
    new-instance v3, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor$1;

    invoke-direct {v3, v2, p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor$1;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1, p0, v3}, Lorg/chromium/chrome/browser/signin/SigninManager;->signIn(Ljava/lang/String;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    goto :goto_0
.end method

.method public static updateSigninManagerFirstRunCheckDone(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 219
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSignInAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->getFirstRunFlowSignInComplete(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->onFirstRunCheckDone()V

    goto :goto_0
.end method
