.class public Lorg/chromium/chrome/browser/ntp/interests/InterestsService;
.super Ljava/lang/Object;
.source "InterestsService.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeInterestsService:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService;->mNativeInterestsService:J

    .line 90
    return-void
.end method

.method private static createInterest(Ljava/lang/String;Ljava/lang/String;D)Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    return-object v0
.end method

.method private static createInterestsArray(I)[Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;
    .locals 1

    .prologue
    .line 116
    new-array v0, p0, [Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetInterests(JLorg/chromium/chrome/browser/ntp/interests/InterestsService$GetInterestsCallback;)V
.end method

.method private native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method


# virtual methods
.method public getInterests(Lorg/chromium/chrome/browser/ntp/interests/InterestsService$GetInterestsCallback;)V
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService;->mNativeInterestsService:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService;->nativeGetInterests(JLorg/chromium/chrome/browser/ntp/interests/InterestsService$GetInterestsCallback;)V

    .line 104
    return-void
.end method
