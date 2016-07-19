.class public Lorg/chromium/chrome/browser/physicalweb/ClearNotificationAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClearNotificationAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->clearNotification()V

    .line 25
    return-void
.end method
