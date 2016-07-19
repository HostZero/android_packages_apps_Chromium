.class public Lorg/chromium/chrome/browser/media/router/cast/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final AUTOJOIN_CUSTOM_CONTROLLER_SCOPED:Ljava/lang/String; = "custom_controller_scoped"

.field public static final AUTOJOIN_ORIGIN_SCOPED:Ljava/lang/String; = "origin_scoped"

.field public static final AUTOJOIN_PAGE_SCOPED:Ljava/lang/String; = "page_scoped"

.field public static final AUTOJOIN_TAB_AND_ORIGIN_SCOPED:Ljava/lang/String; = "tab_and_origin_scoped"


# instance fields
.field private final mApplicationId:Ljava/lang/String;

.field private final mAutoJoinPolicy:Ljava/lang/String;

.field private final mClientId:Ljava/lang/String;

.field private final mSourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->mSourceId:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->mApplicationId:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->mClientId:Ljava/lang/String;

    .line 108
    if-nez p4, :cond_0

    const-string/jumbo p4, "tab_and_origin_scoped"

    :cond_0
    iput-object p4, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->mAutoJoinPolicy:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private static extractParameter([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 115
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_1
    return-object v0

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    sget-boolean v1, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "google.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    :cond_1
    :goto_0
    return-object v0

    .line 47
    :cond_2
    const-string/jumbo v2, "/cast"

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 52
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string/jumbo v2, "__castAppId__"

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->extractParameter([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_1

    .line 57
    const-string/jumbo v0, "__castClientId__"

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->extractParameter([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string/jumbo v0, "__castAutoJoinPolicy__"

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->extractParameter([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public buildRouteSelector()Landroid/support/v7/media/e;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/support/v7/media/f;

    invoke-direct {v0}, Landroid/support/v7/media/f;-><init>()V

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->mApplicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/f;->a(Ljava/lang/String;)Landroid/support/v7/media/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/f;->a()Landroid/support/v7/media/e;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->mApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoJoinPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->mAutoJoinPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->mSourceId:Ljava/lang/String;

    return-object v0
.end method
