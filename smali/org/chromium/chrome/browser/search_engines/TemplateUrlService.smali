.class public Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;
.super Ljava/lang/Object;
.source "TemplateUrlService.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;


# instance fields
.field private final mLoadListeners:Lorg/chromium/base/ObserverList;

.field private final mNativeTemplateUrlServiceAndroid:J

.field private final mObservers:Lorg/chromium/base/ObserverList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    .line 100
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mObservers:Lorg/chromium/base/ObserverList;

    .line 106
    invoke-direct {p0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    .line 107
    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 92
    sget-object v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->sService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->sService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    .line 95
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->sService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    return-object v0
.end method

.method private native nativeGetDefaultSearchProvider(J)I
.end method

.method private native nativeGetPrepopulatedTemplateUrlAt(JI)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;
.end method

.method private native nativeGetSearchEngineUrlFromTemplateUrl(JI)Ljava/lang/String;
.end method

.method private native nativeGetTemplateUrlCount(J)I
.end method

.method private native nativeGetUrlForContextualSearchQuery(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetUrlForSearchQuery(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetUrlForVoiceSearchQuery(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeInit()J
.end method

.method private native nativeIsDefaultSearchEngineGoogle(J)Z
.end method

.method private native nativeIsLoaded(J)Z
.end method

.method private native nativeIsSearchByImageAvailable(J)Z
.end method

.method private native nativeIsSearchProviderManaged(J)Z
.end method

.method private native nativeLoad(J)V
.end method

.method private native nativeReplaceSearchTermsInUrl(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeSetUserSelectedDefaultSearchProvider(JI)V
.end method

.method private onTemplateURLServiceChanged()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    .line 154
    invoke-interface {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;->onTemplateURLServiceChanged()V

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method private templateUrlServiceLoaded()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;

    .line 147
    invoke-interface {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;->onTemplateUrlServiceLoaded()V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public getDefaultSearchEngineIndex()I
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 163
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetDefaultSearchProvider(J)I

    move-result v0

    return v0
.end method

.method public getDefaultSearchEngineTemplateUrl()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getDefaultSearchEngineIndex()I

    move-result v1

    .line 173
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 175
    sget-boolean v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 176
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-wide v2, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetTemplateUrlCount(J)I

    move-result v0

    if-lt v1, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_3
    iget-wide v2, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetPrepopulatedTemplateUrlAt(JI)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalizedSearchEngines()Ljava/util/List;
    .locals 6

    .prologue
    .line 127
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 128
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetTemplateUrlCount(J)I

    move-result v1

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 131
    iget-wide v4, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v4, v5, v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetPrepopulatedTemplateUrlAt(JI)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_0

    .line 134
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-object v2
.end method

.method public getSearchEngineUrlFromTemplateUrl(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetSearchEngineUrlFromTemplateUrl(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlForContextualSearchQuery(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 292
    iget-wide v2, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetUrlForContextualSearchQuery(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetUrlForSearchQuery(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlForVoiceSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetUrlForVoiceSearchQuery(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefaultSearchEngineGoogle()Z
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeIsDefaultSearchEngineGoogle(J)Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 111
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeIsLoaded(J)Z

    move-result v0

    return v0
.end method

.method public isSearchByImageAvailable()Z
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 197
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeIsSearchByImageAvailable(J)Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 116
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeLoad(J)V

    .line 117
    return-void
.end method

.method public registerLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    move-result v0

    .line 214
    sget-boolean v1, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 215
    :cond_0
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public replaceSearchTermsInUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeReplaceSearchTermsInUrl(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSearchEngine(I)V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 185
    iget-wide v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeSetUserSelectedDefaultSearchProvider(JI)V

    .line 186
    return-void
.end method

.method public unregisterLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    move-result v0

    .line 224
    sget-boolean v1, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_0
    return-void
.end method
