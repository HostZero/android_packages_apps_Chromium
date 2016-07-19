.class Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;
.super Lorg/chromium/content/browser/ContentViewClient;
.source "Tab.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab$1;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method


# virtual methods
.method public doesPerformWebSearch()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public getContentVideoViewEmbedder()Lorg/chromium/content/browser/ContentVideoViewEmbedder;
    .locals 2

    .prologue
    .line 471
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;-><init>(Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;Landroid/app/Activity;)V

    return-object v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getInsetObserverView()Lorg/chromium/chrome/browser/InsetObserverView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/InsetObserverView;->getSystemWindowInsetsBottom()I

    move-result v0

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackgroundColorChanged(I)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->onBackgroundColorChanged(I)V

    .line 372
    return-void
.end method

.method public onContextualActionBarHidden()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    # getter for: Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/Tab;->access$200(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 395
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/tab/TabObserver;->onContextualActionBarVisibilityChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    .line 397
    :cond_0
    return-void
.end method

.method public onContextualActionBarShown()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    # getter for: Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/Tab;->access$200(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 388
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/tab/TabObserver;->onContextualActionBarVisibilityChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method

.method public onFocusedNodeEditabilityChanged(Z)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    goto :goto_0
.end method

.method public onImeEvent()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/tab/Tab;->mAppAssociatedWith:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->access$302(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingSadTab()Z

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/tab/Tab;->onOffsetsChanged(FFZ)V
    invoke-static {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/tab/Tab;->access$000(Lorg/chromium/chrome/browser/tab/Tab;FFZ)V

    .line 378
    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    # invokes: Lorg/chromium/chrome/browser/tab/Tab;->updateTitle(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->access$100(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public performWebSearch(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->getGeoHeader(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 426
    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v2, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v2, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVerbatimHeaders(Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 429
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v4

    invoke-interface {v0, v2, v1, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0
.end method
