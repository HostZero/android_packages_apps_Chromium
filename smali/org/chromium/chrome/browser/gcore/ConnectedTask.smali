.class public abstract Lorg/chromium/chrome/browser/gcore/ConnectedTask;
.super Ljava/lang/Object;
.source "ConnectedTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONNECTION_RETRY_TIME_MS:J

.field public static final CONNECTION_TIMEOUT_MS:J

.field public static final RETRY_NUMBER_LIMIT:I = 0x5


# instance fields
.field private final mClient:Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;

.field private final mLogPrefix:Ljava/lang/String;

.field private mRetryNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-class v0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->$assertionsDisabled:Z

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->CONNECTION_TIMEOUT_MS:J

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->CONNECTION_RETRY_TIME_MS:J

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;)V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/gcore/ConnectedTask;-><init>(Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-boolean v0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mClient:Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;

    .line 60
    iput-object p2, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mLogPrefix:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected connectionFailed()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected abstract doWhenConnected(Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;)V
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract retry(Ljava/lang/Runnable;J)V
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GCore:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":run"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mClient:Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;

    sget-wide v2, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->CONNECTION_TIMEOUT_MS:J

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;->connectWithTimeout(J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :try_start_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mClient:Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->doWhenConnected(Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mClient:Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;->disconnect()V

    .line 110
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->cleanUp()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GCore:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":run"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 131
    return-void

    .line 108
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mClient:Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;->disconnect()V

    .line 110
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->cleanUp()V

    .line 111
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    :try_start_4
    const-string/jumbo v1, "GCore"

    const-string/jumbo v2, "%s:%s runtime exception %s: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mLogPrefix:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    :catchall_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GCore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    :try_start_5
    iget v0, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mRetryNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mRetryNumber:I

    .line 115
    iget v0, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mRetryNumber:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->mClient:Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/gcore/ChromeGoogleApiClient;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-wide v0, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->CONNECTION_RETRY_TIME_MS:J

    invoke-virtual {p0, p0, v0, v1}, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->retry(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->connectionFailed()V

    .line 121
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/gcore/ConnectedTask;->cleanUp()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method
