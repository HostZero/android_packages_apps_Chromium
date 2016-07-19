.class public Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;
.super Ljava/lang/Object;
.source "InterceptNavigationDelegateImpl.java"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAuthenticatorHelper:Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;

.field private mClearAllForwardHistoryRequired:Z

.field private final mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

.field private mLastOverrideUrlLoadingResult:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

.field private mShouldClearRedirectHistoryForTabClobbering:Z

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mLastOverrideUrlLoadingResult:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    .line 51
    iput-object p2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 52
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeApplication;->createAuthenticatorNavigationInterceptor(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mAuthenticatorHelper:Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;-><init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 44
    return-void
.end method

.method private getLastCommittedEntryIndex()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->getLastCommittedEntryIndex()I

    move-result v0

    goto :goto_0
.end method

.method private logBlockedNavigationToDevToolsConsole(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->canExternalAppHandleUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/chromium/chrome/R$string;->blocked_navigation_warning:I

    .line 229
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/chromium/content_public/browser/WebContents;->addMessageToDevToolsConsole(ILjava/lang/String;)V

    .line 231
    return-void

    .line 226
    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->unreachable_navigation_warning:I

    goto :goto_0
.end method

.method private onOverrideUrlLoadingAndLaunchIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->shouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getLaunchType()Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne v0, v1, :cond_2

    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->moveTaskToBack(Z)Z

    .line 210
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    goto :goto_0

    .line 211
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->isOnNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->getLastCommittedEntryIndexBeforeStartingNavigation()I

    move-result v0

    .line 214
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->getLastCommittedEntryIndex()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 218
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mClearAllForwardHistoryRequired:Z

    .line 219
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/chromium/content_public/browser/NavigationController;->goToNavigationIndex(I)V

    goto :goto_0
.end method

.method private shouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoToOffset(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 186
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->isOnNavigation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->getLastCommittedEntryIndexBeforeStartingNavigation()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method getAuthenticatorNavigationInterceptor()Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mAuthenticatorHelper:Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;

    return-object v0
.end method

.method public getLastOverrideUrlLoadingResultForTests()Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mLastOverrideUrlLoadingResult:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    return-object v0
.end method

.method public maybeUpdateNavigationHistory()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 142
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mClearAllForwardHistoryRequired:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    .line 145
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->getLastCommittedEntryIndex()I

    move-result v1

    .line 146
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Lorg/chromium/content_public/browser/NavigationController;->removeEntryAtIndex(I)Z

    move-result v2

    .line 149
    sget-boolean v3, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mShouldClearRedirectHistoryForTabClobbering:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 155
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->getLastCommittedEntryIndexBeforeStartingNavigation()I

    move-result v2

    .line 159
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->getLastCommittedEntryIndex()I

    move-result v0

    .line 160
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, v2, :cond_3

    .line 161
    invoke-interface {v1, v0}, Lorg/chromium/content_public/browser/NavigationController;->removeEntryAtIndex(I)Z

    move-result v3

    .line 162
    sget-boolean v4, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 165
    :cond_3
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mClearAllForwardHistoryRequired:Z

    .line 166
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mShouldClearRedirectHistoryForTabClobbering:Z

    .line 167
    return-void
.end method

.method public shouldIgnoreNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 77
    iget-object v10, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mAuthenticatorHelper:Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mAuthenticatorHelper:Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;

    invoke-interface {v0, v10}, Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;->handleAuthenticatorUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v8

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    .line 84
    iget v1, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    iget-boolean v2, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    iget-boolean v3, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->hasUserGesture:Z

    if-nez v3, :cond_2

    iget-boolean v3, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->hasUserGestureCarryover:Z

    if-eqz v3, :cond_4

    :cond_2
    move v3, v8

    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/ChromeActivity;->getLastUserInteractionTime()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->getLastCommittedEntryIndex()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->updateNewUrlLoading(IZZJI)V

    .line 88
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->shouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent()Z

    move-result v11

    .line 89
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getLaunchType()Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne v1, v2, :cond_5

    if-eqz v11, :cond_5

    move v9, v8

    .line 93
    :goto_2
    new-instance v1, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v3

    iget-object v4, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->referrer:Ljava/lang/String;

    iget v5, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    iget-boolean v6, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    move-object v2, v10

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;-><init>(Ljava/lang/String;ZLjava/lang/String;IZ)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setApplicationMustBeInForeground(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setRedirectHandler(Lorg/chromium/chrome/browser/tab/TabRedirectHandler;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setOpenInNewTab(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v9, :cond_6

    move v0, v8

    :goto_3
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setIsBackgroundTabNavigation(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isMainFrame:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setIsMainFrame(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->hasUserGesture:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setHasUserGesture(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v0

    if-eqz v11, :cond_3

    iget-boolean v1, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isMainFrame:Z

    if-eqz v1, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {v0, v7}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setShouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->build()Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->shouldOverrideUrlLoading(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    .line 108
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mLastOverrideUrlLoadingResult:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    .line 109
    sget-object v1, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl$1;->$SwitchMap$org$chromium$chrome$browser$externalnav$ExternalNavigationHandler$OverrideUrlLoadingResult:[I

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 126
    iget-boolean v0, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isExternalProtocol:Z

    if-eqz v0, :cond_8

    .line 127
    invoke-direct {p0, v10}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->logBlockedNavigationToDevToolsConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v3, v7

    .line 84
    goto/16 :goto_1

    :cond_5
    move v9, v7

    .line 89
    goto :goto_2

    :cond_6
    move v0, v7

    .line 93
    goto :goto_3

    .line 111
    :pswitch_0
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    invoke-virtual {v0, v10}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->canExternalAppHandleUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_7
    iget-boolean v0, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isMainFrame:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->onOverrideUrlLoadingAndLaunchIntent()V

    goto/16 :goto_0

    .line 117
    :pswitch_1
    iput-boolean v8, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mShouldClearRedirectHistoryForTabClobbering:Z

    goto/16 :goto_0

    .line 120
    :pswitch_2
    if-nez v11, :cond_0

    iget-boolean v0, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isMainFrame:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->onOverrideUrlLoadingAndLaunchIntent()V

    goto/16 :goto_0

    .line 130
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget v2, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    iget-object v3, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->referrer:Ljava/lang/String;

    invoke-static {v0, v1, v10, v2, v3}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->shouldOverrideUrlLoading(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    goto/16 :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public shouldIgnoreNewTab(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 58
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mAuthenticatorHelper:Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mAuthenticatorHelper:Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;

    invoke-interface {v1, p1}, Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;->handleAuthenticatorUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    invoke-direct {v1, p1, p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;-><init>(Ljava/lang/String;Z)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setOpenInNewTab(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->build()Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->shouldOverrideUrlLoading(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
