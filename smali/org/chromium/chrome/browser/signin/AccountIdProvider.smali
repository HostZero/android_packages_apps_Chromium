.class public Lorg/chromium/chrome/browser/signin/AccountIdProvider;
.super Ljava/lang/Object;
.source "AccountIdProvider.java"


# static fields
.field private static sProvider:Lorg/chromium/chrome/browser/signin/AccountIdProvider;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/signin/AccountIdProvider;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 66
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountIdProvider;->sProvider:Lorg/chromium/chrome/browser/signin/AccountIdProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/signin/AccountIdProvider;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/signin/AccountIdProvider;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountIdProvider;->sProvider:Lorg/chromium/chrome/browser/signin/AccountIdProvider;

    .line 67
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountIdProvider;->sProvider:Lorg/chromium/chrome/browser/signin/AccountIdProvider;

    return-object v0
.end method

.method public static setInstanceForTest(Lorg/chromium/chrome/browser/signin/AccountIdProvider;)V
    .locals 0

    .prologue
    .line 76
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 77
    sput-object p0, Lorg/chromium/chrome/browser/signin/AccountIdProvider;->sProvider:Lorg/chromium/chrome/browser/signin/AccountIdProvider;

    .line 78
    return-void
.end method


# virtual methods
.method public canBeUsed(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$Silent;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$Silent;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->canUseGooglePlayServices(Landroid/content/Context;Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;)Z

    move-result v0

    return v0
.end method

.method public getAccountId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 44
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/gms/auth/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :goto_1
    const-string/jumbo v1, "cr.AccountIdProvider"

    const-string/jumbo v2, "AccountIdProvider.getAccountId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :catch_1
    move-exception v0

    goto :goto_1
.end method
