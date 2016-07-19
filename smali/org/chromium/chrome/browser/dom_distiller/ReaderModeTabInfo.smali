.class public Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;
.super Ljava/lang/Object;
.source "ReaderModeTabInfo.java"


# instance fields
.field private mCurrentUrl:Ljava/lang/String;

.field private mIsCallbackSet:Z

.field private mIsDismissed:Z

.field private mStatus:I

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mStatus:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebContentsObserver()Lorg/chromium/content_public/browser/WebContentsObserver;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    return-object v0
.end method

.method public isCallbackSet()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mIsCallbackSet:Z

    return v0
.end method

.method public isDismissed()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mIsDismissed:Z

    return v0
.end method

.method public setIsCallbackSet(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mIsCallbackSet:Z

    .line 98
    return-void
.end method

.method public setIsDismissed(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mIsDismissed:Z

    .line 70
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mStatus:I

    .line 49
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mCurrentUrl:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setWebContentsObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    .line 35
    return-void
.end method
