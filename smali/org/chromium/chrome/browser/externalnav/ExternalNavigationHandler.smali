.class public Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;
.super Ljava/lang/Object;
.source "ExternalNavigationHandler.java"


# static fields
.field public static final EXTRA_BROWSER_FALLBACK_URL:Ljava/lang/String; = "browser_fallback_url"


# instance fields
.field private final mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;-><init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;)V

    .line 72
    return-void
.end method

.method private clobberCurrentTabWithFallbackUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 3

    .prologue
    .line 417
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->isMainFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    .line 429
    :goto_0
    return-object v0

    .line 426
    :cond_0
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->setShouldNotOverrideUrlLoadingUntilNewUrlLoading()V

    .line 429
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->clobberCurrentTab(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultSmsPackageName(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->getDefaultSmsPackageName()Ljava/lang/String;

    move-result-object v2

    .line 457
    if-nez v2, :cond_0

    move-object v0, v1

    .line 464
    :goto_0
    return-object v0

    .line 459
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 460
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 461
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 464
    goto :goto_0
.end method

.method private intentsHaveSameResolvers(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v0, p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 126
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 130
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private shouldOverrideUrlLoadingInternal(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;Landroid/content/Intent;ZLjava/lang/String;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 8

    .prologue
    .line 143
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->isApplicationMustBeInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->isChromeAppInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    .line 404
    :goto_0
    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->isBackgroundTabNavigation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getPageTransition()I

    move-result v0

    and-int/lit16 v4, v0, 0xff

    .line 153
    if-nez v4, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 154
    :goto_1
    const/4 v0, 0x7

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    .line 155
    :goto_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getPageTransition()I

    move-result v1

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 156
    :goto_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getPageTransition()I

    move-result v2

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 158
    :goto_4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    move v5, v3

    .line 162
    :goto_5
    const/4 v3, 0x1

    if-ne v4, v3, :cond_7

    const/4 v3, 0x1

    .line 163
    :goto_6
    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->isRedirect()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    const/4 v3, 0x1

    move v4, v3

    .line 177
    :goto_7
    if-eqz v2, :cond_9

    .line 178
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto :goto_0

    .line 153
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    .line 154
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 155
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 156
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 158
    :cond_6
    const/4 v3, 0x0

    move v5, v3

    goto :goto_5

    .line 162
    :cond_7
    const/4 v3, 0x0

    goto :goto_6

    .line 163
    :cond_8
    const/4 v3, 0x0

    move v4, v3

    goto :goto_7

    .line 184
    :cond_9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->shouldRequestFileAccess(Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->shouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent()Z

    move-result v3

    invoke-interface {v0, p2, v1, v2, v3}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->startFileIntent(Landroid/content/Intent;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V

    .line 189
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_ASYNC_ACTION:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 194
    :cond_a
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 195
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->shouldStayInChrome(Z)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->shouldNotOverrideUrlLoading()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 197
    :cond_b
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 204
    :cond_c
    if-eqz v6, :cond_f

    if-nez v1, :cond_f

    const/4 v2, 0x1

    .line 206
    :goto_8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x0

    .line 211
    :goto_9
    if-eqz v6, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->isRedirect()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    if-eqz v3, :cond_11

    :cond_e
    const/4 v1, 0x1

    move v3, v1

    .line 216
    :goto_a
    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->isRedirect()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    .line 218
    :goto_b
    if-nez v4, :cond_14

    .line 219
    if-nez v2, :cond_13

    if-nez v3, :cond_13

    if-nez v1, :cond_13

    .line 220
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 204
    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    .line 206
    :cond_10
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->isOnEffectiveIntentRedirectChain()Z

    move-result v3

    goto :goto_9

    .line 211
    :cond_11
    const/4 v1, 0x0

    move v3, v1

    goto :goto_a

    .line 216
    :cond_12
    const/4 v1, 0x0

    goto :goto_b

    .line 222
    :cond_13
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->isNavigationFromUserTyping()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 224
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 231
    :cond_14
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "chrome://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 234
    :cond_15
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 237
    :cond_16
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wtai://wp/mc;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->startActivity(Landroid/content/Intent;)V

    .line 243
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_EXTERNAL_INTENT:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 244
    :cond_17
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wtai://wp/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 246
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 251
    :cond_18
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "about:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "chrome:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "chrome-native:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 254
    :cond_19
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 258
    :cond_1a
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "content:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 259
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 266
    :cond_1b
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".*youtube\\.com.*[?&]pairingCode=.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 267
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 271
    :cond_1c
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string/jumbo v2, "disable-external-intent-requests"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 273
    const-string/jumbo v0, "UrlHandler"

    const-string/jumbo v1, "External intent handling is disabled by a command-line flag."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 279
    :cond_1d
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_1e

    .line 283
    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 287
    :cond_1e
    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v1, p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 288
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f

    const/4 v1, 0x1

    .line 291
    :goto_c
    if-nez v1, :cond_22

    .line 292
    if-eqz p3, :cond_20

    .line 293
    invoke-direct {p0, p4, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->clobberCurrentTabWithFallbackUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    goto/16 :goto_0

    .line 288
    :cond_1f
    const/4 v1, 0x0

    goto :goto_c

    .line 295
    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_21

    .line 298
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&referrer="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    const-string/jumbo v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string/jumbo v0, "com.android.vending"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->startActivity(Landroid/content/Intent;)V

    .line 305
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_EXTERNAL_INTENT:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 309
    :catch_0
    move-exception v0

    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 312
    :cond_21
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 316
    :cond_22
    if-eqz p3, :cond_23

    .line 317
    const-string/jumbo v1, "browser_fallback_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 320
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "sms:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 321
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->getDefaultSmsPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    :cond_24
    const-string/jumbo v1, "com.android.browser.application_id"

    iget-object v4, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v4}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->isOpenInNewTab()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo v1, "create_new_tab"

    const/4 v4, 0x1

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    :cond_25
    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 332
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/chromium/chrome/browser/IntentHandler;->setPendingReferrer(Landroid/content/Intent;Ljava/lang/String;)V

    .line 338
    :cond_26
    if-nez v5, :cond_29

    .line 339
    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->isSpecializedHandlerAvailable(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 340
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 341
    :cond_27
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    if-nez v6, :cond_28

    if-eqz v0, :cond_29

    .line 348
    :cond_28
    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    :goto_d
    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 359
    :try_start_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 365
    :goto_e
    if-eqz v0, :cond_29

    .line 366
    invoke-direct {p0, p2, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->intentsHaveSameResolvers(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 367
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 351
    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 352
    const/4 v0, 0x0

    goto :goto_d

    .line 362
    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e

    .line 375
    :cond_29
    :try_start_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v0, p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->willChromeHandleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 378
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_2a

    move-object v3, p4

    :goto_f
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->shouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent()Z

    move-result v5

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->startIncognitoIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V

    .line 381
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_ASYNC_ACTION:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 378
    :cond_2a
    const/4 v3, 0x0

    goto :goto_f

    .line 383
    :cond_2b
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2c

    .line 384
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->hasNewResolver(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 385
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 390
    :cond_2c
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->hasUserGesture()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 391
    invoke-static {}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->getInstance()Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->onNewIntentWithGesture(Landroid/content/Intent;)V

    .line 393
    :cond_2d
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v0, p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->startActivityIfNeeded(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 394
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_EXTERNAL_INTENT:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0

    .line 396
    :cond_2e
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 404
    :catch_3
    move-exception v0

    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto/16 :goto_0
.end method


# virtual methods
.method public canExternalAppHandleUrl(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 437
    const-string/jumbo v2, "wtai://wp/mc;"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 440
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->mDelegate:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;

    invoke-interface {v3, v2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 442
    :catch_0
    move-exception v2

    .line 444
    const-string/jumbo v3, "UrlHandler"

    const-string/jumbo v4, "Bad URI %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 446
    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 99
    const-string/jumbo v0, "browser_fallback_url"

    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isValidForIntentFallbackNavigation(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 109
    invoke-direct {p0, p1, v3, v1, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->shouldOverrideUrlLoadingInternal(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;Landroid/content/Intent;ZLjava/lang/String;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v2

    .line 111
    const-string/jumbo v3, "Android.StrictMode.OverrideUrlLoadingTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 114
    sget-object v3, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->shouldNotOverrideUrlLoading()Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->clobberCurrentTabWithFallbackUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    .line 120
    :goto_1
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string/jumbo v3, "UrlHandler"

    const-string/jumbo v4, "Bad URI %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    goto :goto_1

    .line 105
    :cond_1
    const/4 v0, 0x0

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 120
    goto :goto_1
.end method
