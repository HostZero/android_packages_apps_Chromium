.class public Lorg/chromium/components/webrestrictions/WebRestrictionsClient;
.super Ljava/lang/Object;
.source "WebRestrictionsClient.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sMock:Lorg/chromium/components/webrestrictions/WebRestrictionsClient;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mQueryUri:Landroid/net/Uri;

.field private mRequestUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Ljava/lang/String;J)Lorg/chromium/components/webrestrictions/WebRestrictionsClient;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->sMock:Lorg/chromium/components/webrestrictions/WebRestrictionsClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;

    invoke-direct {v0}, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;-><init>()V

    .line 84
    :goto_0
    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->init(Ljava/lang/String;J)V

    .line 85
    return-object v0

    .line 83
    :cond_0
    sget-object v0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->sMock:Lorg/chromium/components/webrestrictions/WebRestrictionsClient;

    goto :goto_0
.end method


# virtual methods
.method init(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 58
    sget-boolean v0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "authorized"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mQueryUri:Landroid/net/Uri;

    .line 61
    const-string/jumbo v1, "requested"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mRequestUri:Landroid/net/Uri;

    .line 62
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    new-instance v1, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p3}, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$1;-><init>(Lorg/chromium/components/webrestrictions/WebRestrictionsClient;Landroid/os/Handler;J)V

    iput-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentObserver:Landroid/database/ContentObserver;

    .line 74
    iget-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    return-void
.end method

.method native nativeNotifyWebRestrictionsChanged(J)V
.end method

.method onDestroy()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    return-void
.end method

.method requestPermission(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 125
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 126
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mRequestUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldProceed(Ljava/lang/String;)Lorg/chromium/components/webrestrictions/WebRestrictionsClient$ShouldProceedResult;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 111
    const-string/jumbo v0, "url = \'%s\'"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 112
    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mQueryUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v7

    .line 114
    :goto_0
    if-eqz v0, :cond_2

    .line 115
    :goto_1
    new-instance v1, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$ShouldProceedResult;

    invoke-direct {v1, v0, v2}, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$ShouldProceedResult;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_1
    move v0, v6

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method supportsRequest()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->mRequestUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
