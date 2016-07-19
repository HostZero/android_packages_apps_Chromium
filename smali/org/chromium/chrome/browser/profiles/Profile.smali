.class public Lorg/chromium/chrome/browser/profiles/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# instance fields
.field private final mIsOffTheRecord:Z

.field private mNativeProfileAndroid:J


# direct methods
.method private constructor <init>(J)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:J

    .line 27
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/profiles/Profile;->nativeIsOffTheRecord(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mIsOffTheRecord:Z

    .line 28
    return-void
.end method

.method private static create(J)Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/profiles/Profile;-><init>(J)V

    return-object v0
.end method

.method public static getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->nativeGetLastUsedProfile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/profiles/Profile;

    return-object v0
.end method

.method private getNativePointer()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:J

    return-wide v0
.end method

.method private native nativeDestroyWhenAppropriate(J)V
.end method

.method private static native nativeGetLastUsedProfile()Ljava/lang/Object;
.end method

.method private native nativeGetOffTheRecordProfile(J)Ljava/lang/Object;
.end method

.method private native nativeGetOriginalProfile(J)Ljava/lang/Object;
.end method

.method private native nativeHasOffTheRecordProfile(J)Z
.end method

.method private native nativeIsOffTheRecord(J)Z
.end method

.method private onNativeDestroyed()V
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:J

    .line 76
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mIsOffTheRecord:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->deleteCookiesIfNecessary(Landroid/content/Context;)Z

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyWhenAppropriate()V
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/profiles/Profile;->nativeDestroyWhenAppropriate(J)V

    .line 41
    return-void
.end method

.method public getOriginalProfile()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/profiles/Profile;->nativeGetOriginalProfile(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/profiles/Profile;

    return-object v0
.end method

.method public hasOffTheRecordProfile()Z
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/profiles/Profile;->nativeHasOffTheRecordProfile(J)Z

    move-result v0

    return v0
.end method

.method public isNativeInitialized()Z
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mNativeProfileAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffTheRecord()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->mIsOffTheRecord:Z

    return v0
.end method
