.class public Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;
.super Ljava/lang/Object;
.source "GoogleServicesNotificationController.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->mApplicationContext:Landroid/content/Context;

    .line 55
    new-instance v1, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;

    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;-><init>(Landroid/app/NotificationManager;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    .line 58
    return-void
.end method

.method public static formatMessageParts(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;
    .locals 2

    .prologue
    .line 40
    sget-object v1, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->sInstance:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->sInstance:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    .line 44
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->sInstance:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;->cancel(I)V

    .line 94
    return-void
.end method

.method public overrideNotificationManagerForTests(Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    .line 99
    return-void
.end method

.method public showNotification(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->mApplicationContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1, v2, p4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 78
    new-instance v2, Landroid/support/v4/app/Z;

    iget-object v3, p0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/support/v4/app/Z;->c(Z)Landroid/support/v4/app/Z;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/Z;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Z;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/Z;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->ic_chrome:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/Z;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Z;->d(Z)Landroid/support/v4/app/Z;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/support/v4/app/Y;

    invoke-direct {v1, v0}, Landroid/support/v4/app/Y;-><init>(Landroid/support/v4/app/Z;)V

    invoke-virtual {v1, p3}, Landroid/support/v4/app/Y;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Y;->a()Landroid/app/Notification;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    invoke-interface {v1, p1, v0}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;->notify(ILandroid/app/Notification;)V

    .line 90
    return-void
.end method

.method public updateSingleNotification(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->cancelNotification(I)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2, p2, p3}, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->showNotification(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method
