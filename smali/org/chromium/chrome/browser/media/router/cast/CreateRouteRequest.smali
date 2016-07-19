.class public Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;
.super Ljava/lang/Object;
.source "CreateRouteRequest.java"

# interfaces
.implements Lcom/google/android/gms/common/api/i;
.implements Lcom/google/android/gms/common/api/j;
.implements Lcom/google/android/gms/common/api/m;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mApiClient:Lcom/google/android/gms/common/api/g;

.field private final mCastListener:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;

.field private final mOrigin:Ljava/lang/String;

.field private final mPresentationId:Ljava/lang/String;

.field private final mRequestId:I

.field private final mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

.field private final mSink:Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

.field private final mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

.field private mState:I

.field private final mTabId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Lorg/chromium/chrome/browser/media/router/cast/MediaSink;Ljava/lang/String;Ljava/lang/String;IILorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;-><init>(Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mCastListener:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    .line 124
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    .line 128
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSink:Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    .line 129
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mPresentationId:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mOrigin:Ljava/lang/String;

    .line 131
    iput p5, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mTabId:I

    .line 132
    iput p6, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mRequestId:I

    .line 133
    iput-object p7, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    .line 134
    return-void
.end method

.method private createApiClient(Lcom/google/android/gms/cast/j;Landroid/content/Context;)Lcom/google/android/gms/common/api/g;
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSink:Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 1000
    new-instance v1, Lcom/google/android/gms/cast/i;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/cast/i;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/j;)V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/i;->a(Z)Lcom/google/android/gms/cast/i;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/google/android/gms/common/api/h;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/cast/a;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->a()Lcom/google/android/gms/cast/h;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->b()Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method private launchApplication(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/l;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->throwInvalidState()V

    .line 280
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 281
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    iget v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mRequestId:I

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->onRouteRequestError(Ljava/lang/String;I)V

    .line 283
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->terminate()V

    .line 284
    return-void
.end method

.method private reportSuccess(Lcom/google/android/gms/cast/c;)V
    .locals 10

    .prologue
    .line 259
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->throwInvalidState()V

    .line 261
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-interface {p1}, Lcom/google/android/gms/cast/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/cast/c;->a()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/cast/c;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSink:Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mOrigin:Ljava/lang/String;

    iget v7, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mTabId:I

    iget-object v8, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    iget-object v9, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;-><init>(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;ILorg/chromium/chrome/browser/media/router/cast/MediaSource;Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;)V

    .line 271
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mCastListener:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->setSession(Lorg/chromium/chrome/browser/media/router/cast/CastSession;)V

    .line 272
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->onSessionCreated(Lorg/chromium/chrome/browser/media/router/cast/CastSession;)V

    .line 274
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->terminate()V

    .line 275
    return-void
.end method

.method private terminate()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/i;)V

    .line 288
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/g;->b(Lcom/google/android/gms/common/api/j;)V

    .line 289
    const/4 v0, 0x5

    iput v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    .line 290
    return-void
.end method

.method private throwInvalidState()V
    .locals 5

    .prologue
    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid state: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNativeRequestId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mRequestId:I

    return v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mPresentationId:Ljava/lang/String;

    return-object v0
.end method

.method public getSink()Lorg/chromium/chrome/browser/media/router/cast/MediaSink;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSink:Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    return-object v0
.end method

.method public getSource()Lorg/chromium/chrome/browser/media/router/cast/MediaSource;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    return-object v0
.end method

.method public getTabId()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mTabId:I

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 177
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    if-eq v0, v3, :cond_0

    .line 178
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->throwInvalidState()V

    .line 183
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    if-ne v0, v3, :cond_1

    .line 193
    :goto_0
    return-void

    .line 186
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mApiClient:Lcom/google/android/gms/common/api/g;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->launchApplication(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/l;->a(Lcom/google/android/gms/common/api/m;)V

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "Launch application failed: %s, %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 226
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    if-eq v0, v4, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->throwInvalidState()V

    .line 228
    :cond_0
    const-string/jumbo v0, "GoogleApiClient connection failed: %d, %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->reportError(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    .line 200
    return-void
.end method

.method public onResult(Lcom/google/android/gms/cast/c;)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    .line 204
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    if-eq v0, v5, :cond_0

    .line 206
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->throwInvalidState()V

    .line 209
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/cast/c;->d()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    const-string/jumbo v1, "Launch application failed with status: %s, %d, %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->reportError(Ljava/lang/String;)V

    .line 218
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    .line 219
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->reportSuccess(Lcom/google/android/gms/cast/c;)V

    .line 220
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/o;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/gms/cast/c;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->onResult(Lcom/google/android/gms/cast/c;)V

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->throwInvalidState()V

    .line 170
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mCastListener:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->createApiClient(Lcom/google/android/gms/cast/j;Landroid/content/Context;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mApiClient:Lcom/google/android/gms/common/api/g;

    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->b()V

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->mState:I

    .line 173
    return-void
.end method
