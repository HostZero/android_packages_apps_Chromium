.class public Lorg/chromium/chrome/browser/document/CipherKeyActivity;
.super Landroid/app/Activity;
.source "CipherKeyActivity.java"


# static fields
.field public static final FORWARD_INTENT:Ljava/lang/String; = "forward_intent"

.field public static final FORWARD_OPTIONS:Ljava/lang/String; = "forward_options"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/document/CipherKeyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    if-eqz p1, :cond_0

    const-string/jumbo v1, "forward_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v1, "forward_options"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 47
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/crypto/CipherFactory;->restoreFromBundle(Landroid/os/Bundle;)Z

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/CipherKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "forward_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/CipherKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "forward_options"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/document/CipherKeyActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 60
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/CipherKeyActivity;->moveTaskToBack(Z)Z

    .line 66
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/crypto/CipherFactory;->saveToBundle(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
