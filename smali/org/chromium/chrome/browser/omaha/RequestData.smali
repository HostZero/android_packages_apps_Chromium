.class public Lorg/chromium/chrome/browser/omaha/RequestData;
.super Ljava/lang/Object;
.source "RequestData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCreationTimestamp:J

.field private final mInstallSource:Ljava/lang/String;

.field private final mRequestID:Ljava/lang/String;

.field private final mSendInstallEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/chromium/chrome/browser/omaha/RequestData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omaha/RequestData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lorg/chromium/chrome/browser/omaha/RequestData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omaha/RequestData;->mSendInstallEvent:Z

    .line 22
    iput-wide p2, p0, Lorg/chromium/chrome/browser/omaha/RequestData;->mCreationTimestamp:J

    .line 23
    iput-object p4, p0, Lorg/chromium/chrome/browser/omaha/RequestData;->mRequestID:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lorg/chromium/chrome/browser/omaha/RequestData;->mInstallSource:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getAgeInMilliseconds(J)J
    .locals 3

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omaha/RequestData;->mCreationTimestamp:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public getAgeInSeconds(J)J
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/omaha/RequestData;->getAgeInMilliseconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omaha/RequestData;->mCreationTimestamp:J

    return-wide v0
.end method

.method public getInstallSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/RequestData;->mInstallSource:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/RequestData;->mRequestID:Ljava/lang/String;

    return-object v0
.end method

.method public isSendInstallEvent()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/RequestData;->mSendInstallEvent:Z

    return v0
.end method
