.class public Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;
.super Ljava/lang/Object;
.source "ChildAccountService.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static checkHasChildAccount(Landroid/content/Context;Lorg/chromium/base/Callback;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 37
    invoke-static {}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;->nativeIsChildAccountDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 52
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    .line 42
    new-instance v1, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService$1;

    invoke-direct {v1, p1, v0}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService$1;-><init>(Lorg/chromium/base/Callback;Lorg/chromium/sync/signin/AccountManagerHelper;)V

    invoke-virtual {v0, v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts(Lorg/chromium/base/Callback;)V

    goto :goto_0
.end method

.method public static isChildAccount()Z
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;->nativeIsChildAccount()Z

    move-result v0

    return v0
.end method

.method private static native nativeIsChildAccount()Z
.end method

.method private static native nativeIsChildAccountDetectionEnabled()Z
.end method
