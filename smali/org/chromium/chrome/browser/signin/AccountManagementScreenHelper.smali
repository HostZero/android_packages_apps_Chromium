.class public Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;
.super Ljava/lang/Object;
.source "AccountManagementScreenHelper.java"


# static fields
.field public static final GAIA_SERVICE_TYPE_NONE:I = 0x0

.field public static final GAIA_SERVICE_TYPE_SIGNUP:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logEvent(II)V
    .locals 0

    .prologue
    .line 78
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->nativeLogEvent(II)V

    .line 79
    return-void
.end method

.method private static native nativeLogEvent(II)V
.end method

.method private static openAccountManagementScreen(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;I)V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 45
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 46
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->openAndroidAccountCreationScreen(Landroid/content/Context;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->openAccountManagementScreen(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;I)V

    goto :goto_0
.end method

.method private static openAndroidAccountCreationScreen(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 60
    const/16 v0, 0x8

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->logEvent(II)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "account_types"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.google"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/high16 v1, 0x34020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
