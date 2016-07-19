.class public Lorg/chromium/chrome/browser/firstrun/FirstRunGlueImpl;
.super Ljava/lang/Object;
.source "FirstRunGlueImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptTermsOfService(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 35
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->initCrashUploadPreference(Z)V

    .line 37
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setEulaAccepted()V

    .line 38
    return-void
.end method

.method public didAcceptTermsOfService(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Lorg/chromium/chrome/browser/firstrun/ToSAckedReceiver;->checkAnyUserHasSeenToS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isFirstRunEulaAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultAccountName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-static {p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccountNames()Ljava/util/List;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isNeverUploadCrashDump(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 30
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isNeverUploadCrashDump()Z

    move-result v0

    return v0
.end method

.method public numberOfAccounts(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 50
    invoke-static {p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccountNames()Ljava/util/List;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public openAccountAdder(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lorg/chromium/chrome/browser/signin/AccountAdder;->getInstance()Lorg/chromium/chrome/browser/signin/AccountAdder;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/signin/AccountAdder;->addAccount(Landroid/app/Fragment;I)V

    .line 57
    return-void
.end method
