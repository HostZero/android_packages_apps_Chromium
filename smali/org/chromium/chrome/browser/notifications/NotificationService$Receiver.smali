.class public Lorg/chromium/chrome/browser/notifications/NotificationService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 36
    # getter for: Lorg/chromium/chrome/browser/notifications/NotificationService;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/NotificationService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Received a notification intent in the NotificationService\'s receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-class v0, Lorg/chromium/chrome/browser/notifications/NotificationService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method
