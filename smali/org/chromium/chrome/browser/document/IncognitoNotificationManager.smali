.class public Lorg/chromium/chrome/browser/document/IncognitoNotificationManager;
.super Ljava/lang/Object;
.source "IncognitoNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissIncognitoNotification()V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 54
    const-string/jumbo v1, "incognito_tabs_open"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public static updateIncognitoNotification(Landroid/app/PendingIntent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 28
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->close_all_incognito_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    new-instance v3, Landroid/support/v4/app/Z;

    invoke-direct {v3, v0}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/support/v4/app/Z;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v4/app/Z;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/Z;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/Z;->b(Z)Landroid/support/v4/app/Z;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Z;->d(I)Landroid/support/v4/app/Z;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->incognito_statusbar:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Z;->a(Z)Landroid/support/v4/app/Z;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/Z;->d(Z)Landroid/support/v4/app/Z;

    move-result-object v1

    .line 42
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 44
    const-string/jumbo v2, "incognito_tabs_open"

    const/16 v3, 0x64

    invoke-virtual {v1}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 45
    return-void
.end method
