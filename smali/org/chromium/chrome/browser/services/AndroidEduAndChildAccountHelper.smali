.class public abstract Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;
.super Ljava/lang/Object;
.source "AndroidEduAndChildAccountHelper.java"

# interfaces
.implements Lorg/chromium/base/Callback;
.implements Lorg/chromium/chrome/browser/services/AndroidEduOwnerCheckCallback;


# instance fields
.field private mHasChildAccount:Ljava/lang/Boolean;

.field private mIsAndroidEduDevice:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkDone()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->mIsAndroidEduDevice:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->mHasChildAccount:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->onParametersReady()V

    goto :goto_0
.end method


# virtual methods
.method public hasChildAccount()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->mHasChildAccount:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isAndroidEduDevice()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->mIsAndroidEduDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public abstract onParametersReady()V
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->mHasChildAccount:Ljava/lang/Boolean;

    .line 65
    invoke-direct {p0}, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->checkDone()V

    .line 66
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSchoolCheckDone(Z)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->mIsAndroidEduDevice:Ljava/lang/Boolean;

    .line 58
    invoke-direct {p0}, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;->checkDone()V

    .line 59
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p1, p0}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;->checkHasChildAccount(Landroid/content/Context;Lorg/chromium/base/Callback;)V

    .line 45
    check-cast p1, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/ChromeApplication;->checkIsAndroidEduDevice(Lorg/chromium/chrome/browser/services/AndroidEduOwnerCheckCallback;)V

    .line 47
    return-void
.end method
