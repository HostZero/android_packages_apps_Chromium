.class public Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;
.super Landroid/app/Activity;
.source "ResetDataActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private authenticateSender()Z
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private resetData()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->supportsResetData()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 103
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    move-result v0

    return v0
.end method

.method private returnHasData(Z)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    const-string/jumbo v1, "has_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->setResult(ILandroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->finish()V

    .line 111
    return-void
.end method

.method private returnResult(I)V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->finish()V

    .line 116
    return-void
.end method

.method private supportsResetData()Z
    .locals 2

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->authenticateSender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->returnResult(I)V

    .line 88
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->supportsResetData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->returnResult(I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dry_run"

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->returnHasData(Z)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->resetData()Z

    move-result v0

    .line 86
    sget-boolean v1, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/childaccounts/ResetDataActivity;->returnResult(I)V

    goto :goto_0
.end method
