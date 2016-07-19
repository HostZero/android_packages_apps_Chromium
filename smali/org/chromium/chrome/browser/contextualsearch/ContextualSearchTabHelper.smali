.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "ContextualSearchTabHelper.java"


# instance fields
.field private mBaseContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

.field private mNativeHelper:J

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mNativeHelper:J

    .line 53
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 54
    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->onContextualSearchPrefChanged()V

    return-void
.end method

.method private addContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->getGestureStateListener()Lorg/chromium/content_public/browser/GestureStateListener;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/ContentViewCore;->addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 155
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/ContentViewCore;->setContextualSearchClient(Lorg/chromium/content/browser/ContextualSearchClient;)V

    .line 157
    :cond_0
    return-void
.end method

.method public static createForTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 50
    return-void
.end method

.method private getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 195
    instance-of v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContextualSearchActive(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v1

    .line 178
    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContextualSearchDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isDefaultSearchEngineGoogle()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->isRunningInCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method

.method private onContextualSearchPrefChanged()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mBaseContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->setContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 204
    return-void
.end method

.method private removeContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/ContentViewCore;->removeGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 168
    iput-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    .line 169
    invoke-virtual {p1, v1}, Lorg/chromium/content/browser/ContentViewCore;->setContextualSearchClient(Lorg/chromium/content/browser/ContextualSearchClient;)V

    goto :goto_0
.end method

.method private setContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->isContextualSearchActive(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->addContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->removeContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method

.method private updateHooksForNewContentViewCore(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mBaseContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->removeContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 128
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mBaseContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mBaseContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->setContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mNativeHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mNativeHelper:J

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper$1;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    .line 90
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->addObserver(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)V

    .line 92
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->updateHooksForNewContentViewCore(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 93
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 102
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mNativeHelper:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 103
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mNativeHelper:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->nativeDestroy(J)V

    .line 104
    iput-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mNativeHelper:J

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->removeObserver(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mBaseContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->removeContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mBaseContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 111
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mBaseContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->mBaseContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->setContextualSearchHooks(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 69
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->onBasePageLoadStarted()V

    goto :goto_0
.end method

.method public onToggleFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->updateHooksForNewContentViewCore(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 98
    return-void
.end method
