.class final Lorg/chromium/chrome/browser/offlinepages/OfflinePageOpenStorageSettingsDialog$1;
.super Ljava/lang/Object;
.source "OfflinePageOpenStorageSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageOpenStorageSettingsDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 26
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 27
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageOpenStorageSettingsDialog$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.MEMORY_CARD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
