.class Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;
.super Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;
.source "CustomTabDelegateFactory.java"


# instance fields
.field private final mClientPackageName:Ljava/lang/String;

.field private mHasActivityStarted:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 47
    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mClientPackageName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private hasDefaultHandler(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 96
    iget v3, v1, Landroid/content/pm/ResolveInfo;->match:I

    if-eqz v3, :cond_0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "customtabs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not resolve Activity for intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 119
    :cond_0
    throw p0
.end method


# virtual methods
.method public hasExternalActivityStarted()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mHasActivityStarted:Z

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->startActivity(Landroid/content/Intent;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mHasActivityStarted:Z

    .line 54
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 59
    :goto_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->hasDefaultHandler(Landroid/content/Intent;)Z

    move-result v3

    .line 62
    if-nez v3, :cond_0

    .line 63
    :try_start_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mClientPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mApplicationContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mClientPackageName:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->isPackageSpecializedHandler(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->getAvailableContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->mHasActivityStarted:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 80
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v2

    .line 58
    goto :goto_0

    .line 66
    :cond_3
    if-nez v0, :cond_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;->logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    goto :goto_1
.end method
