.class public Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;
.super Ljava/lang/Object;
.source "GoogleApiClientHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/i;
.implements Lcom/google/android/gms/common/api/j;


# instance fields
.field private final mClient:Lcom/google/android/gms/common/api/g;

.field private mDisconnectionDelayMs:J

.field private final mHandler:Landroid/os/Handler;

.field private mPendingDisconnect:Ljava/lang/Runnable;

.field private mResolutionAttempts:I

.field private mWasConnectedBefore:Z


# direct methods
.method static synthetic access$002(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mPendingDisconnect:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->disconnect()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;)Lcom/google/android/gms/common/api/g;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/g;

    return-object v0
.end method

.method private cancelPendingDisconnection()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mPendingDisconnect:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mPendingDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mPendingDisconnect:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private disconnect()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mWasConnectedBefore:Z

    .line 200
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->c()V

    .line 201
    return-void
.end method

.method private static isErrorRecoverableByRetrying(I)Z
    .locals 1

    .prologue
    .line 245
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mResolutionAttempts:I

    .line 235
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->isErrorRecoverableByRetrying(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mResolutionAttempts:I

    if-ge v0, v1, :cond_0

    .line 219
    iget v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mResolutionAttempts:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    iget v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mResolutionAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mResolutionAttempts:I

    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$2;-><init>(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;)V

    sget-wide v2, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->CONNECTION_RETRY_TIME_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 5

    .prologue
    .line 241
    const-string/jumbo v0, "GCore"

    const-string/jumbo v1, "Managed client connection suspended. Cause: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method restoreConnectedState()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->cancelPendingDisconnection()V

    .line 170
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mWasConnectedBefore:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->b()V

    .line 173
    :cond_0
    return-void
.end method

.method scheduleDisconnection()V
    .locals 4

    .prologue
    .line 180
    invoke-direct {p0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->cancelPendingDisconnection()V

    .line 182
    new-instance v0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$1;-><init>(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mPendingDisconnect:Ljava/lang/Runnable;

    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mPendingDisconnect:Ljava/lang/Runnable;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mDisconnectionDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    return-void
.end method
