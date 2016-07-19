.class public Lorg/chromium/chrome/browser/webapps/WebappLauncherActivity;
.super Landroid/app/Activity;
.source "WebappLauncherActivity.java"


# static fields
.field public static final ACTION_START_WEBAPP:Ljava/lang/String; = "com.google.android.apps.chrome.webapps.WebappManager.ACTION_START_WEBAPP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static bringWebappToFront(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    move v0, v1

    .line 120
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 108
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 109
    if-eqz v0, :cond_1

    instance-of v3, v0, Lorg/chromium/chrome/browser/webapps/WebappActivity;

    if-eqz v3, :cond_1

    .line 111
    check-cast v0, Lorg/chromium/chrome/browser/webapps/WebappActivity;

    .line 112
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 114
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabWebContentsDelegateAndroid()Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->activateContents()V

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->create(Landroid/content/Intent;)Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-result-object v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->finishAndRemoveTask(Landroid/app/Activity;)V

    .line 97
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 50
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->id()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->uri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->source()I

    move-result v5

    .line 54
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 55
    const-string/jumbo v6, "org.chromium.chrome.browser.webapp_mac"

    invoke-static {v1, v6}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    if-nez v1, :cond_3

    .line 61
    :goto_1
    if-eqz v0, :cond_4

    invoke-static {p0, v4, v0}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->isUrlValid(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    invoke-static {v4, v5}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->recordHomeScreenLaunchIntoStandaloneActivity(Ljava/lang/String;I)V

    .line 64
    const-class v0, Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_1

    .line 67
    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->instance(Landroid/content/Context;)Lorg/chromium/chrome/browser/webapps/ActivityAssigner;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->assign(Ljava/lang/String;)I

    move-result v1

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->setWebappIntentExtras(Landroid/content/Intent;)V

    .line 78
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webapp://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v0, v1

    .line 91
    :goto_2
    const/high16 v1, 0x10000000

    invoke-static {}, Lorg/chromium/base/ApiCompatibilityUtils;->getActivityNewDocumentFlag()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    :cond_2
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->finishAndRemoveTask(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 57
    :cond_3
    invoke-static {v1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_4
    const-string/jumbo v0, "webapps"

    const-string/jumbo v1, "Shortcut (%s) opened in Chrome."

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v4, v2, v7

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "org.chromium.chrome.browser.webapp_source"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method
