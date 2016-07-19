.class public Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;
.super Lorg/chromium/chrome/browser/document/DocumentActivity;
.source "IncognitoDocumentActivity.java"


# static fields
.field private static sCipherKeySaver:Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity$CipherKeySaver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;-><init>()V

    .line 25
    return-void
.end method

.method private static maybeCreateCipherKeySaver(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;->sCipherKeySaver:Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity$CipherKeySaver;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/crypto/CipherFactory;->hasCipher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity$CipherKeySaver;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity$CipherKeySaver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;->sCipherKeySaver:Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity$CipherKeySaver;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected determineInitialUrl(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DocumentActivity.KEY_INITIAL_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->determineInitialUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected isIncognito()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onPauseWithNative()V
    .locals 0

    .prologue
    .line 76
    invoke-static {p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->persistCookies(Landroid/content/Context;)V

    .line 77
    invoke-super {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->onPauseWithNative()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->onResume()V

    .line 64
    invoke-static {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getRemoveAllIncognitoTabsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/document/IncognitoNotificationManager;->updateIncognitoNotification(Landroid/app/PendingIntent;)V

    .line 66
    return-void
.end method

.method public onResumeWithNative()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->onResumeWithNative()V

    .line 71
    invoke-static {p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->restoreCookies(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/crypto/CipherFactory;->saveToBundle(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;->determineTabId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;->determineInitialUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "DocumentActivity.KEY_INITIAL_URL"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public preInflationStartup()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/crypto/CipherFactory;->restoreFromBundle(Landroid/os/Bundle;)Z

    .line 57
    invoke-static {p0}, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;->maybeCreateCipherKeySaver(Landroid/content/Context;)V

    .line 58
    invoke-super {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->preInflationStartup()V

    .line 59
    return-void
.end method
