.class final Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;
.super Lorg/chromium/chrome/browser/init/EmptyBrowserParts;
.source "AccountsChangedReceiver.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/EmptyBrowserParts;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishNativeInitialization()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2$1;-><init>(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public final onStartupFailure()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->markAccountsChangedPref(Landroid/content/Context;)V

    .line 120
    return-void
.end method
