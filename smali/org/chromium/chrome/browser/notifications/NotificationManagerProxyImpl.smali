.class public Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;
.super Ljava/lang/Object;
.source "NotificationManagerProxyImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;


# instance fields
.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 19
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 24
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 39
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 44
    return-void
.end method
