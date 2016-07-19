.class public Lorg/chromium/chrome/browser/tab/TabRedirectHandler;
.super Ljava/lang/Object;
.source "TabRedirectHandler.java"


# static fields
.field public static final INVALID_ENTRY_INDEX:I = -0x1


# instance fields
.field private final mCachedResolvers:Ljava/util/HashSet;

.field private final mContext:Landroid/content/Context;

.field private mInitialIntent:Landroid/content/Intent;

.field private mInitialNavigationType:I

.field private mIsInitialIntentHeadingToChrome:Z

.field private mIsOnEffectiveRedirectChain:Z

.field private mLastCommittedEntryIndexBeforeStartingNavigation:I

.field private mLastNewUrlLoadingTime:J

.field private mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mCachedResolvers:Ljava/util/HashSet;

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mLastNewUrlLoadingTime:J

    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private clearIntentHistory()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mIsInitialIntentHeadingToChrome:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialIntent:Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mCachedResolvers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 94
    return-void
.end method

.method private static getIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 5

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 224
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_0
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->clearIntentHistory()V

    .line 101
    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    .line 102
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mIsOnEffectiveRedirectChain:Z

    .line 103
    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mLastCommittedEntryIndexBeforeStartingNavigation:I

    .line 104
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z

    .line 105
    return-void
.end method

.method public getLastCommittedEntryIndexBeforeStartingNavigation()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mLastCommittedEntryIndexBeforeStartingNavigation:I

    return v0
.end method

.method public hasNewResolver(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 234
    if-eqz p1, :cond_0

    move v0, v1

    .line 248
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 234
    goto :goto_0

    .line 235
    :cond_1
    if-nez p1, :cond_2

    move v0, v2

    .line 236
    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->getIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 240
    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mCachedResolvers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mCachedResolvers:Ljava/util/HashSet;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialIntent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->getIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 243
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 244
    iget-object v4, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mCachedResolvers:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 245
    goto :goto_0

    :cond_5
    move v0, v2

    .line 248
    goto :goto_0
.end method

.method public isNavigationFromUserTyping()Z
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnEffectiveIntentRedirectChain()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 179
    iget v1, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mIsOnEffectiveRedirectChain:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnNavigation()Z
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShouldNotOverrideUrlLoadingUntilNewUrlLoading()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z

    .line 109
    return-void
.end method

.method public shouldNotOverrideUrlLoading()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z

    return v0
.end method

.method public shouldStayInChrome(Z)Z
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mIsInitialIntentHeadingToChrome:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->clear()V

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.android.browser.application_id"

    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mIsInitialIntentHeadingToChrome:Z

    .line 81
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialIntent:Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public updateNewUrlLoading(IZZJI)V
    .locals 8

    .prologue
    .line 130
    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mLastNewUrlLoadingTime:J

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mLastNewUrlLoadingTime:J

    .line 133
    and-int/lit16 v4, p1, 0xff

    .line 135
    const/4 v0, 0x0

    .line 136
    if-nez v4, :cond_3

    const/high16 v1, 0x8000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 138
    :goto_0
    if-nez p2, :cond_1

    .line 139
    const/high16 v5, 0x1000000

    and-int/2addr v5, p1

    if-nez v5, :cond_0

    .line 141
    if-nez v4, :cond_0

    .line 143
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    cmp-long v2, p4, v2

    if-lez v2, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x1

    .line 149
    :cond_1
    if-eqz v0, :cond_9

    .line 151
    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 152
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    .line 166
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mIsOnEffectiveRedirectChain:Z

    .line 167
    iput p6, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mLastCommittedEntryIndexBeforeStartingNavigation:I

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z

    .line 173
    :cond_2
    :goto_2
    return-void

    .line 136
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 154
    :cond_4
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->clearIntentHistory()V

    .line 155
    const/4 v0, 0x1

    if-ne v4, v0, :cond_5

    .line 156
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    goto :goto_1

    .line 157
    :cond_5
    const/16 v0, 0x8

    if-eq v4, v0, :cond_6

    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    .line 159
    :cond_6
    const/4 v0, 0x4

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    goto :goto_1

    .line 160
    :cond_7
    if-nez v4, :cond_8

    if-nez p3, :cond_8

    .line 161
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    goto :goto_1

    .line 163
    :cond_8
    const/4 v0, 0x5

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    goto :goto_1

    .line 169
    :cond_9
    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mInitialNavigationType:I

    if-eqz v0, :cond_2

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->mIsOnEffectiveRedirectChain:Z

    goto :goto_2
.end method
