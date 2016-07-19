.class public abstract Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;
.super Landroid/content/ContentProvider;
.source "WebRestrictionsContentProvider.java"


# static fields
.field public static final BLOCKED:I = 0x0

.field public static final PROCEED:I = 0x1


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mContentUriMatcher:Landroid/content/UriMatcher;

.field private final mSelectionPattern:Ljava/util/regex/Pattern;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 41
    const-string/jumbo v0, "\\s*url\\s*=\\s*\'([^\']*)\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mSelectionPattern:Ljava/util/regex/Pattern;

    .line 42
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 52
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mContentUri:Landroid/net/Uri;

    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mContentUriMatcher:Landroid/content/UriMatcher;

    .line 54
    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mContentUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string/jumbo v2, "authorized"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mContentUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string/jumbo v2, "requested"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method protected abstract canInsert()Z
.end method

.method protected abstract contentProviderEnabled()Z
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0}, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->contentProviderEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    iget-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mContentUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->canInsert()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "text/plain"

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0}, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->contentProviderEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    iget-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mContentUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 134
    const-string/jumbo v1, "url"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v1}, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->requestInsert(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method protected onFilterChanged()V
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "authorized"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 185
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0}, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->contentProviderEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    iget-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mContentUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 66
    iget-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->mSelectionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;->shouldProceed(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 71
    new-instance v0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider$1;

    invoke-direct {v0, p0, v1}, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider$1;-><init>(Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;Landroid/util/Pair;)V

    goto :goto_0
.end method

.method protected abstract requestInsert(Ljava/lang/String;)Z
.end method

.method protected abstract shouldProceed(Ljava/lang/String;)Landroid/util/Pair;
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method
