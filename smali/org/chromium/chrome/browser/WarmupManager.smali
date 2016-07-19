.class public final Lorg/chromium/chrome/browser/WarmupManager;
.super Ljava/lang/Object;
.source "WarmupManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sWarmupManager:Lorg/chromium/chrome/browser/WarmupManager;


# instance fields
.field private final mDnsRequestsInFlight:Ljava/util/Set;

.field private mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

.field private mMainView:Landroid/view/ViewGroup;

.field private final mPendingPreconnectWithProfile:Ljava/util/Map;

.field private mPrerenderIsAllowed:Z

.field private mPrerendered:Z

.field private mPrerenderedWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mToolbarContainerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/chromium/chrome/browser/WarmupManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/WarmupManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerenderIsAllowed:Z

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mDnsRequestsInFlight:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPendingPreconnectWithProfile:Ljava/util/Map;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/WarmupManager;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mDnsRequestsInFlight:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/WarmupManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPendingPreconnectWithProfile:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/WarmupManager;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 57
    sget-object v0, Lorg/chromium/chrome/browser/WarmupManager;->sWarmupManager:Lorg/chromium/chrome/browser/WarmupManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/WarmupManager;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/WarmupManager;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/WarmupManager;->sWarmupManager:Lorg/chromium/chrome/browser/WarmupManager;

    .line 58
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/WarmupManager;->sWarmupManager:Lorg/chromium/chrome/browser/WarmupManager;

    return-object v0
.end method

.method private static native nativePreconnectUrlAndSubresources(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V
.end method

.method private prefetchDnsForUrlInBackground(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mDnsRequestsInFlight:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v0, Lorg/chromium/chrome/browser/WarmupManager$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/WarmupManager$1;-><init>(Lorg/chromium/chrome/browser/WarmupManager;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/WarmupManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    return-void
.end method


# virtual methods
.method public final cancelCurrentPrerender()V
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 197
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/WarmupManager;->clearWebContentsIfNecessary()V

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->cancelCurrentPrerender()V

    goto :goto_0
.end method

.method public final clearWebContentsIfNecessary()V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerendered:Z

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerenderedWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerenderedWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerenderedWebContents:Lorg/chromium/content_public/browser/WebContents;

    goto :goto_0
.end method

.method public final disallowPrerendering()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerenderIsAllowed:Z

    .line 73
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/WarmupManager;->cancelCurrentPrerender()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    .line 75
    return-void
.end method

.method public final hasBuiltOrClearViewHierarchyWithToolbar(I)Z
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mMainView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mToolbarContainerId:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    .line 210
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/WarmupManager;->mMainView:Landroid/view/ViewGroup;

    .line 211
    :cond_0
    return v0

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final initializeViewHierarchy(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 144
    const-string/jumbo v0, "WarmupManager.initializeViewHierarchy"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 146
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mMainView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mToolbarContainerId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 160
    const-string/jumbo v0, "WarmupManager.initializeViewHierarchy"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 148
    :cond_0
    :try_start_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeActivity;->getThemeId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 150
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$layout;->main:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mMainView:Landroid/view/ViewGroup;

    .line 153
    iput p2, p0, Lorg/chromium/chrome/browser/WarmupManager;->mToolbarContainerId:I

    .line 154
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mMainView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->control_container_stub:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 156
    invoke-virtual {v0, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_1
    const-string/jumbo v0, "WarmupManager.initializeViewHierarchy"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "WarmupManager.initializeViewHierarchy"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public final maybePreconnectUrlAndSubResources(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 267
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mDnsRequestsInFlight:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPendingPreconnectWithProfile:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/WarmupManager;->nativePreconnectUrlAndSubresources(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final maybePrefetchDnsForUrlInBackground(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 255
    invoke-static {p1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isEnabledBeforeNativeLoad(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/WarmupManager;->prefetchDnsForUrlInBackground(Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method

.method public final prerenderUrl(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 126
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 127
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerenderIsAllowed:Z

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/WarmupManager;->clearWebContentsIfNecessary()V

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    if-nez v0, :cond_2

    .line 130
    new-instance v0, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    .line 133
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->addPrerender(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;II)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerenderedWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerenderedWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mPrerendered:Z

    goto :goto_0
.end method

.method public final transferViewHierarchyTo(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager;->mMainView:Landroid/view/ViewGroup;

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/WarmupManager;->mMainView:Landroid/view/ViewGroup;

    .line 172
    if-nez v0, :cond_1

    .line 178
    :cond_0
    return-void

    .line 173
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
