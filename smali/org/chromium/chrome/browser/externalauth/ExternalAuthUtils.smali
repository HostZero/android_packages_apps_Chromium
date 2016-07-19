.class public Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;
.super Ljava/lang/Object;
.source "ExternalAuthUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final FLAG_SHOULD_BE_GOOGLE_SIGNED:I = 0x1

.field public static final FLAG_SHOULD_BE_SYSTEM:I = 0x2

.field private static sInstance:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->$assertionsDisabled:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCallingPackages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    .line 55
    sget-object v1, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createExternalAuthUtils()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    return-object v0
.end method

.method private isCallerValid(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    move v5, v1

    .line 123
    :goto_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    .line 125
    :goto_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getCallingPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 129
    array-length v8, v6

    move v4, v2

    move v3, v2

    :goto_2
    if-ge v4, v8, :cond_7

    aget-object v9, v6, v4

    .line 130
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 132
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {p0, v7, v9}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0, v7, v9}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isSystemBuild(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 137
    :cond_2
    :goto_3
    return v2

    :cond_3
    move v5, v2

    .line 122
    goto :goto_0

    :cond_4
    move v0, v2

    .line 123
    goto :goto_1

    :cond_5
    move v3, v1

    .line 129
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move v2, v3

    .line 137
    goto :goto_3
.end method

.method private recordGooglePlayServicesRegistrationTime(J)V
    .locals 3

    .prologue
    .line 242
    :try_start_0
    const-string/jumbo v0, "Android.StrictMode.CheckGooglePlayServicesTime"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public canUseGooglePlayServices(Landroid/content/Context;Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;)Z
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->checkGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 182
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->recordConnectionResult(I)V

    .line 183
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    .line 187
    :cond_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->describeError(I)Ljava/lang/String;

    .line 188
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    new-instance v1, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;-><init>(Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;Landroid/content/Context;I)V

    .line 195
    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 6

    .prologue
    .line 260
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 261
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 263
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 264
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->recordGooglePlayServicesRegistrationTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method protected describeError(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCallerValid(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isCallerValid(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCallerValidForPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isCallerValid(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected isSuccess(I)Z
    .locals 1

    .prologue
    .line 280
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemBuild(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 80
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ExternalAuthUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Package with name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 85
    :catch_1
    move-exception v0

    const-string/jumbo v0, "ExternalAuthUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Caller with package name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not in the system build"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 86
    goto :goto_0
.end method

.method protected isUserRecoverableError(I)Z
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    return v0
.end method

.method protected recordConnectionResult(I)V
    .locals 1

    .prologue
    .line 232
    const-string/jumbo v0, "GooglePlayServices.ConnectionResult"

    invoke-static {v0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    .line 234
    return-void
.end method

.method public showErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 332
    :cond_0
    return-void
.end method

.method public showErrorNotification(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorNotification(Landroid/content/Context;I)V

    .line 312
    return-void
.end method
