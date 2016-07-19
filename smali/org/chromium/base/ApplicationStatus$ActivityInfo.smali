.class Lorg/chromium/base/ApplicationStatus$ActivityInfo;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"


# instance fields
.field private mListeners:Lorg/chromium/base/ObserverList;

.field private mStatus:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x6

    iput v0, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mStatus:I

    .line 32
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mListeners:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/ApplicationStatus$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/base/ApplicationStatus$ActivityInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getListeners()Lorg/chromium/base/ObserverList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mListeners:Lorg/chromium/base/ObserverList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mStatus:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mStatus:I

    .line 47
    return-void
.end method
