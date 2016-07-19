.class public Lorg/chromium/chrome/browser/init/EmptyBrowserParts;
.super Ljava/lang/Object;
.source "EmptyBrowserParts.java"

# interfaces
.implements Lorg/chromium/chrome/browser/init/BrowserParts;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishNativeInitialization()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public initializeCompositor()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public initializeState()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public isActivityDestroyed()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public maybePreconnect()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onStartupFailure()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public postInflationStartup()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public preInflationStartup()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public setContentViewAndLoadLibrary()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method
