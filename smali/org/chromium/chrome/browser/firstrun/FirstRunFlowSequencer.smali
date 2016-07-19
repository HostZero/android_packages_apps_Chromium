.class public abstract Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;
.super Ljava/lang/Object;
.source "FirstRunFlowSequencer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mLaunchProperties:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mLaunchProperties:Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method public static checkIfFirstRunIsNecessary(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string/jumbo v2, "disable-fre"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/ToSAckedReceiver;->checkAnyUserHasSeenToS(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    :cond_2
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v1

    .line 229
    if-nez v1, :cond_0

    .line 230
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->createGenericFirstRunIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static createGenericFirstRunIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    const-class v1, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string/jumbo v1, "ComingFromChromeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "UseFreFlowSequencer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    return-object v0
.end method

.method public static markFlowAsCompleted(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isFirstRunEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setEulaAccepted()V

    .line 207
    :cond_0
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->finalizeFirstRunFlowState(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 208
    return-void
.end method


# virtual methods
.method protected enableCrashUpload()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->initCrashUploadPreference(Z)V

    .line 123
    return-void
.end method

.method protected getGoogleAccounts()[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected hasAnyUserSeenToS()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/ToSAckedReceiver;->checkAnyUserHasSeenToS(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isFirstRunEulaAccepted()Z
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isFirstRunEulaAccepted()Z

    move-result v0

    return v0
.end method

.method protected isFirstRunFlowComplete()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isSignedIn()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method protected isStableBuild()Z
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isStableBuild()Z

    move-result v0

    return v0
.end method

.method protected isSyncAllowed()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->canAllowSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSigninDisabledByPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onFlowIsKnown(Landroid/os/Bundle;)V
.end method

.method processFreEnvironment(ZZ)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->isFirstRunFlowComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    sget-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->isFirstRunEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->onFlowIsKnown(Landroid/os/Bundle;)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mLaunchProperties:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 141
    const-string/jumbo v0, "UseFreFlowSequencer"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .line 144
    array-length v0, v6

    if-ne v0, v1, :cond_a

    move v4, v1

    .line 148
    :goto_1
    if-eqz p1, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_b

    move v3, v1

    .line 151
    :goto_2
    if-nez v3, :cond_c

    move v0, v1

    .line 152
    :goto_3
    const-string/jumbo v7, "ShowWelcome"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->isStableBuild()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->enableCrashUpload()V

    .line 164
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->isSyncAllowed()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez v3, :cond_d

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->shouldSkipFirstUseHints()Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, v6

    if-lez v0, :cond_d

    :cond_4
    move v0, v1

    .line 167
    :goto_4
    const-string/jumbo v7, "ShowSignIn"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    if-nez v0, :cond_5

    if-eqz v3, :cond_8

    .line 174
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->hasAnyUserSeenToS()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v4, :cond_7

    :cond_6
    if-nez p2, :cond_7

    if-eqz v3, :cond_8

    .line 175
    :cond_7
    const-string/jumbo v0, "ForceSigninAccountTo"

    aget-object v4, v6, v2

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "PreselectButAllowToChange"

    if-nez v3, :cond_e

    if-nez p2, :cond_e

    :goto_5
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    :cond_8
    const-string/jumbo v0, "IsChildAccount"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    const-string/jumbo v0, "ShowDataReduction"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->shouldShowDataReductionPage()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->onFlowIsKnown(Landroid/os/Bundle;)V

    .line 188
    if-nez p2, :cond_9

    if-eqz v3, :cond_1

    .line 190
    :cond_9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->setFirstRunFlowSignInComplete()V

    goto/16 :goto_0

    :cond_a
    move v4, v2

    .line 144
    goto :goto_1

    :cond_b
    move v3, v2

    .line 148
    goto :goto_2

    :cond_c
    move v0, v2

    .line 151
    goto :goto_3

    :cond_d
    move v0, v2

    .line 164
    goto :goto_4

    :cond_e
    move v1, v2

    .line 177
    goto :goto_5
.end method

.method protected setFirstRunFlowSignInComplete()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->setFirstRunFlowSignInComplete(Landroid/content/Context;Z)V

    .line 129
    return-void
.end method

.method protected shouldShowDataReductionPage()Z
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "DataReductionProxyFREPromo"

    invoke-static {v0}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected shouldSkipFirstUseHints()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->shouldSkipFirstUseHints(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "disable-fre"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->onFlowIsKnown(Landroid/os/Bundle;)V

    .line 72
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mLaunchProperties:Landroid/os/Bundle;

    const-string/jumbo v1, "UseFreFlowSequencer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mLaunchProperties:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->onFlowIsKnown(Landroid/os/Bundle;)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer$1;-><init>(Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer$1;->start(Landroid/content/Context;)V

    goto :goto_0
.end method
