.class public Lorg/chromium/chrome/browser/ShortcutHelper$Delegate;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFullscreenAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "com.google.android.apps.chrome.webapps.WebappManager.ACTION_START_WEBAPP"

    return-object v0
.end method

.method public sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
