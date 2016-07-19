.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
.super Ljava/lang/Object;
.source "ContextualSearchRequest.java"


# static fields
.field static final TLITE_SOURCE_LANGUAGE_PARAM:Ljava/lang/String; = "tlitesl"


# instance fields
.field private mHasFailedLowPriorityLoad:Z

.field private mIsLowPriority:Z

.field private mIsTranslationForced:Z

.field private mLowPriorityUri:Landroid/net/Uri;

.field private mNormalPriorityUri:Landroid/net/Uri;

.field private final mWasPrefetch:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mWasPrefetch:Z

    .line 64
    invoke-virtual {p0, p1, p2, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getUriTemplate(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mNormalPriorityUri:Landroid/net/Uri;

    .line 65
    if-eqz p3, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getUriTemplate(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->makeLowPriorityUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mLowPriorityUri:Landroid/net/Uri;

    .line 69
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mIsLowPriority:Z

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mIsLowPriority:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mLowPriorityUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private makeLowPriorityUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sns"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private makeTranslateUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 219
    const-string/jumbo v1, "ctxsl_trans"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 220
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const-string/jumbo v1, "tlitesl"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 223
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string/jumbo v1, "tlitetl"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 226
    :cond_1
    const-string/jumbo v1, "tlitetxt"

    const-string/jumbo v2, "q"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method forceAutoDetectTranslation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->forceTranslation(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method forceTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mIsTranslationForced:Z

    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mLowPriorityUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mLowPriorityUri:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->makeTranslateUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mLowPriorityUri:Landroid/net/Uri;

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mNormalPriorityUri:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->makeTranslateUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mNormalPriorityUri:Landroid/net/Uri;

    .line 162
    return-void
.end method

.method getHasFailed()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mHasFailedLowPriorityLoad:Z

    return v0
.end method

.method getSearchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mLowPriorityUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mLowPriorityUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mNormalPriorityUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getSearchUrlForPromotion()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getSearchUrl()Ljava/lang/String;

    move-result-object v2

    .line 143
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string/jumbo v3, "(ctxs=[^&]+)"

    const-string/jumbo v4, "ctxr"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method

.method protected getUriTemplate(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForContextualSearchQuery(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method isContextualSearchUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getSearchUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTranslationForced()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mIsTranslationForced:Z

    return v0
.end method

.method isUsingLowPriority()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mIsLowPriority:Z

    return v0
.end method

.method setHasFailed()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mHasFailedLowPriorityLoad:Z

    .line 102
    return-void
.end method

.method setNormalPriority()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mIsLowPriority:Z

    .line 81
    return-void
.end method

.method wasPrefetch()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->mWasPrefetch:Z

    return v0
.end method
