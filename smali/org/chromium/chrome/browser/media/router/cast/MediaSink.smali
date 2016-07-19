.class public Lorg/chromium/chrome/browser/media/router/cast/MediaSink;
.super Ljava/lang/Object;
.source "MediaSink.java"


# instance fields
.field private final mDevice:Lcom/google/android/gms/cast/CastDevice;

.field private final mId:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mDevice:Lcom/google/android/gms/cast/CastDevice;

    .line 33
    return-void
.end method

.method public static fromRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->u()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/cast/CastDevice;->a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;)V

    return-object v0
.end method

.method public static fromSinkId(Ljava/lang/String;Landroid/support/v7/media/MediaRouter;)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 104
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->fromRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p1, p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    instance-of v2, p1, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    if-eqz v2, :cond_3

    .line 64
    check-cast p1, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    .line 65
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public getDevice()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mDevice:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "urn:x-org.chromium:media:sink:cast-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mName:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 76
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    const-string/jumbo v0, "MediaSink: %s, %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
