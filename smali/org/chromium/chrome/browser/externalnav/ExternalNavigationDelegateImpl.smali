.class public Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;
.super Ljava/lang/Object;
.source "ExternalNavigationDelegateImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final mApplicationContext:Landroid/content/Context;

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 61
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->loadIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method private closeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 465
    instance-of v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    .line 468
    :cond_0
    return-void
.end method

.method public static forcePdfViewerAsIntentHandlerIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->isPdfIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z

    goto :goto_0
.end method

.method public static isPackageSpecializedHandler(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 260
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->isPackageSpecializedHandler(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 266
    :goto_0
    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isPackageSpecializedHandler(Ljava/util/List;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 245
    :goto_0
    return v0

    .line 227
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 228
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 229
    if-eqz v4, :cond_2

    .line 234
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    goto :goto_0

    .line 239
    :cond_4
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 240
    if-eqz v0, :cond_2

    .line 241
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 242
    goto :goto_0

    :cond_5
    move v0, v2

    .line 245
    goto :goto_0
.end method

.method private static isPdfIntent(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_2

    const-string/jumbo v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "application/pdf"

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 377
    .line 378
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    move p5, v2

    .line 385
    :goto_0
    if-eqz p3, :cond_3

    .line 386
    :goto_1
    invoke-static {p3}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 387
    if-eqz p5, :cond_1

    invoke-direct {p0, p4}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 411
    :cond_1
    :goto_2
    return-void

    .line 381
    :cond_2
    if-eqz p5, :cond_8

    move v0, v1

    .line 382
    goto :goto_0

    .line 385
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 391
    :cond_4
    if-eqz v0, :cond_6

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 393
    const-string/jumbo v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    if-eqz p6, :cond_5

    const-string/jumbo v2, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    :cond_5
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/IntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;Landroid/content/Context;)V

    .line 399
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->startActivity(Landroid/content/Intent;)V

    .line 401
    if-eqz p5, :cond_1

    invoke-direct {p0, p4}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_2

    .line 405
    :cond_6
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v1, 0x6

    invoke-direct {v0, p3, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 406
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 407
    new-instance v1, Lorg/chromium/content_public/common/Referrer;

    invoke-direct {v1, p2, v2}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    .line 408
    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 410
    :cond_7
    invoke-virtual {p4, v0}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method private static logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 456
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    .line 457
    const-string/jumbo v0, "ExternalNavigationDelegateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not resolve Activity for intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 459
    :cond_0
    throw p0
.end method

.method public static resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 165
    sget-boolean v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-static {v0, p0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 111
    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-eqz v3, :cond_1

    .line 113
    if-nez p2, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    move v0, v2

    .line 145
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 124
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 125
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v2

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const-string/jumbo v7, "com.google.android.apps.docs"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    invoke-static {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->isPdfIntent(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 129
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 135
    :goto_2
    if-eqz v3, :cond_4

    if-nez p2, :cond_4

    if-nez v0, :cond_4

    move v0, v1

    .line 136
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    move v0, v1

    .line 145
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static willChromeHandleIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz p2, :cond_3

    const/high16 v2, 0x10000

    :goto_1
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 200
    if-eqz v2, :cond_2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 198
    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    move v0, v1

    .line 204
    goto :goto_0
.end method


# virtual methods
.method public clobberCurrentTab(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 418
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    new-instance v1, Lorg/chromium/content_public/common/Referrer;

    invoke-direct {v1, p2, v2}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    .line 420
    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 422
    :cond_0
    if-eqz p3, :cond_1

    .line 423
    invoke-virtual {p3, v0}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 424
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_CLOBBERING_TAB:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    .line 433
    :goto_0
    return-object v0

    .line 426
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "clobberCurrentTab was called with an empty tab."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 427
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 428
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 429
    const-string/jumbo v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string/jumbo v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->startActivity(Landroid/content/Intent;)V

    .line 433
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_EXTERNAL_INTENT:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto :goto_0
.end method

.method protected final getAvailableContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getDefaultSmsPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChromeAppInForeground()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 439
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpecializedHandlerAvailable(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->isPackageSpecializedHandler(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shouldRequestFileAccess(Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 340
    if-nez p2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/base/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->forcePdfViewerAsIntentHandlerIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V

    .line 278
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->getAvailableContext()Landroid/content/Context;

    move-result-object v0

    .line 279
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 289
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->forcePdfViewerAsIntentHandlerIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V

    .line 290
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->getAvailableContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 292
    check-cast v0, Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 294
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    move v0, v1

    .line 298
    goto :goto_0
.end method

.method public startFileIntent(Landroid/content/Intent;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 6

    .prologue
    .line 355
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;-><init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V

    .line 371
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    .line 373
    return-void
.end method

.method public startIncognitoIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 9

    .prologue
    .line 305
    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 306
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 308
    :cond_0
    check-cast v0, Landroid/app/Activity;

    .line 309
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lorg/chromium/chrome/R$string;->external_app_leave_incognito_warning_title:I

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->external_app_leave_incognito_warning:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->ok:I

    new-instance v2, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;

    invoke-direct {v2, p0, p1, p4, p5}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;-><init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lorg/chromium/chrome/R$string;->cancel:I

    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$2;-><init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V

    invoke-virtual {v7, v8, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;-><init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V

    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public willChromeHandleIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->willChromeHandleIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method
