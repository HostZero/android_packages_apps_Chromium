.class Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$FullScreenTabWebContentsDelegateAndroid;
.super Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
.source "FullScreenDelegateFactory.java"


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 29
    return-void
.end method


# virtual methods
.method public activateContents()V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$FullScreenTabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 34
    instance-of v1, v0, Lorg/chromium/chrome/browser/webapps/WebappActivity;

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 36
    check-cast v1, Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getWebappInfo()Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->uri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string/jumbo v4, "com.google.android.apps.chrome.webapps.WebappManager.ACTION_START_WEBAPP"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->setWebappIntentExtras(Landroid/content/Intent;)V

    .line 48
    const-string/jumbo v1, "org.chromium.chrome.browser.webapp_mac"

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/ShortcutHelper;->getEncodedMac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
