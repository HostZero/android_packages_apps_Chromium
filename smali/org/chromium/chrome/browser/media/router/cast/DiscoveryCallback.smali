.class public Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;
.super Landroid/support/v7/media/g;
.source "DiscoveryCallback.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDiscoveryDelegate:Lorg/chromium/chrome/browser/media/router/DiscoveryDelegate;

.field private mSinks:Ljava/util/List;

.field private mSourceUrns:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/chromium/chrome/browser/media/router/DiscoveryDelegate;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/media/g;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSourceUrns:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSinks:Ljava/util/List;

    .line 29
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSinks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mDiscoveryDelegate:Lorg/chromium/chrome/browser/media/router/DiscoveryDelegate;

    .line 35
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->addSourceUrn(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private updateChromeMediaRouter()V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSourceUrns:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mDiscoveryDelegate:Lorg/chromium/chrome/browser/media/router/DiscoveryDelegate;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSinks:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0, v3}, Lorg/chromium/chrome/browser/media/router/DiscoveryDelegate;->onSinksReceived(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public addSourceUrn(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSourceUrns:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mDiscoveryDelegate:Lorg/chromium/chrome/browser/media/router/DiscoveryDelegate;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSinks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Lorg/chromium/chrome/browser/media/router/DiscoveryDelegate;->onSinksReceived(Ljava/lang/String;Ljava/util/List;)V

    .line 42
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSourceUrns:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 54
    invoke-static {p2}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->fromRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSinks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSinks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->updateChromeMediaRouter()V

    goto :goto_0
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 62
    invoke-static {p2}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->fromRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSinks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSinks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->updateChromeMediaRouter()V

    goto :goto_0
.end method

.method public removeSourceUrn(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->mSourceUrns:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
