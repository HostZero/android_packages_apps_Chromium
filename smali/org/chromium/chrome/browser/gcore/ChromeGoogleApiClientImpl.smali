.class public Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClientImpl;
.super Ljava/lang/Object;
.source "ChromeGoogleApiClientImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mClient:Lcom/google/android/gms/common/api/g;


# virtual methods
.method public connectWithTimeout(J)Z
    .locals 7

    .prologue
    .line 56
    const-string/jumbo v0, "ChromeGoogleApiClientImpl:connectWithTimeout"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClientImpl;->mClient:Lcom/google/android/gms/common/api/g;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/g;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const-string/jumbo v1, "Icing"

    const-string/jumbo v2, "Connection to GmsCore unsuccessful. Error %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 66
    const-string/jumbo v1, "ChromeGoogleApiClientImpl:connectWithTimeout"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeGoogleApiClientImpl:connectWithTimeout"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClientImpl;->mClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->c()V

    .line 41
    return-void
.end method

.method public isGooglePlayServicesAvailable()Z
    .locals 3

    .prologue
    .line 45
    const-string/jumbo v0, "ChromeGoogleApiClientImpl:isGooglePlayServicesAvailable"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 47
    :try_start_0
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClientImpl;->mApplicationContext:Landroid/content/Context;

    new-instance v2, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$Silent;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$Silent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->canUseGooglePlayServices(Landroid/content/Context;Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 50
    const-string/jumbo v1, "ChromeGoogleApiClientImpl:isGooglePlayServicesAvailable"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeGoogleApiClientImpl:isGooglePlayServicesAvailable"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method
