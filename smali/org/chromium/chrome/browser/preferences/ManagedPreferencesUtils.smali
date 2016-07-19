.class public Lorg/chromium/chrome/browser/preferences/ManagedPreferencesUtils;
.super Ljava/lang/Object;
.source "ManagedPreferencesUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManagedByEnterpriseIconId()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lorg/chromium/chrome/R$drawable;->controlled_setting_mandatory:I

    return v0
.end method

.method public static showManagedByAdministratorToast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    sget v0, Lorg/chromium/chrome/R$string;->managed_by_your_administrator:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 27
    return-void
.end method

.method public static showManagedByParentToast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getSupervisedUserSecondCustodianName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 38
    if-eqz v0, :cond_0

    sget v0, Lorg/chromium/chrome/R$string;->managed_by_your_parent:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 41
    return-void

    .line 38
    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->managed_by_your_parents:I

    goto :goto_0
.end method
